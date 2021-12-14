# MIT license
# Copyright (c) Microsoft Corporation. All rights reserved.
# See LICENSE in the project root for full license information.

#TODO move this code into generate.jl. Change AGFFileReader.jl so it doesn't install glass files automatically. It looks like
#generating files on import is frowned upon by Julia Registrator. Make user do it manually.
include(joinpath("..", "src", "constants.jl"))
include(joinpath(GLASSCAT_DIR, "GlassTypes.jl"))
include(joinpath(GLASSCAT_DIR, "sources.jl"))
include(joinpath(GLASSCAT_DIR, "generate.jl"))

mkpath(AGF_DIR)
mkpath(JL_DIR)

# Build/verify a source directory using information from sources.txt
sources = split.(readlines(SOURCES_PATH))
verify_sources!(sources, AGF_DIR)
verified_source_names = first.(sources)

# Use verified sources to generate required .jl files
@info "Using sources: $(join(verified_source_names, ", ", " and "))"
generate_jls(verified_source_names, AGFGLASSCAT_PATH, JL_DIR, AGF_DIR)
