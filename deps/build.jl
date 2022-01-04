# MIT license
# Copyright (c) Microsoft Corporation. All rights reserved.
# See LICENSE in the project root for full license information.

module BuildAGF

using Pkg.Artifacts

# paths for AGFFileReader source file builds
const GLASSCAT_DIR = @__DIR__ # contains AGFFileReader.jl (pre-existing)
const SOURCES_PATH = joinpath(GLASSCAT_DIR, "sources.txt")

include("generate.jl")

include(joinpath("..", "src", "constants.jl"))
# include(joinpath(GLASSCAT_DIR, "GlassTypes.jl"))
include(joinpath(GLASSCAT_DIR, "sources.jl"))
include(joinpath(GLASSCAT_DIR, "generate.jl"))

artifact_toml = joinpath(@__DIR__, "Artifacts.toml")
agf_hash = artifact_hash("AGF", artifact_toml)

# If the name was not bound, or the hash it was bound to does not exist, create it!
if agf_hash === nothing || !artifact_exists(agf_hash)
    # create_artifact() returns the content-hash of the artifact directory once we're finished creating it

    agf_hash = create_artifact() do artifact_dir
        agf_dir = joinpath(artifact_dir, "agf") # contains SCHOTT.agf, SUMITA.agf, etc.
        mkdir(agf_dir)
        jl_dir = joinpath(artifact_dir, "jl") # contains AGFGlasscat.jl, SCHOTT.jl, etc.
        mkdir(jl_dir)
       #run agf generation code to create a glass catalog directory in tempdir
       #then copy this to the artifact location
       # Build/verify a source directory using information from sources.txt
        sources = split.(readlines(SOURCES_PATH))
        verify_sources!(sources, agf_dir)
        verified_source_names = first.(sources)

        # Use verified sources to generate required .jl files
        @info "Using sources: $(join(verified_source_names, ", ", " and "))"
        @info "Creating glass catalog artifacts in directory $artifact_dir with subdirectories $jl_dir $agf_dir"
        generate_jls(verified_source_names, artifact_dir, jl_dir, agf_dir)
        cp(joinpath(@__DIR__,GlassTypes.jl),artifact_dir)
    end

    # Now bind that hash within our `Artifacts.toml`.  `force = true` means that if it already exists,
    # just overwrite with the new content-hash.  Unless the source files change, we do not expect
    # the content hash to change, so this should not cause unnecessary version control churn.
    bind_artifact!(artifact_toml, "AGF", agf_hash,force=true)
end

end #module

