# MIT license
# Copyright (c) Microsoft Corporation. All rights reserved.
# See LICENSE in the project root for full license information.

module AGFFileReader

using Polynomials
using Plots
using StringEncodings
using Unitful
using StaticArrays
using Base: @.
import Unitful: Length, Temperature, Quantity, Units
using Unitful.DefaultSymbols
using Pkg
using Pkg.Artifacts
using ForwardDiff

include("constants.jl")

#maybe can solve the literal/Intellisense problem by creating a file in the Artifacts directory which contains literals with the pathnames to the various glass files. Then include the created file here. Might work. Probably won't. 

#Look up the location of the artifacts directory and load GlassTypes.jl
agf_hash = artifact_hash("AGF", artifact_toml)
catalog_path = artifact_path(agf_hash)
include(joinpath(catalog_path,"GlassTypes.jl"))
include(joinpath(catalog_path,"AGFGlassCat.jl")) # this needs to be literal for intellisense to work so you won't get Intellisense. Which is the whole point of having these jl files. If this doesn't work then might as well use file parsing.
include(jointpath(catalog_path,"OTHER.jl"))

export GlassID, info, glassid, glassname, glassforid
include("Air.jl")
export Air, isair


#TODO need to modify to use Artifacts.toml instead of constants
# # include built glass cat source files
# @assert AGFGLASSCAT_PATH === joinpath(@__DIR__, "data", "jl", "AGFGlassCat.jl")
# if !isfile(AGFGLASSCAT_PATH)
#     @warn "$(basename(AGFGLASSCAT_PATH)) not found! Running build steps."
#     Pkg.build("AGFFileReader"; verbose=true)
# end
# include("data/jl/AGFGlassCat.jl") # this needs to be literal for intellisense to work
# include("data/jl/OTHER.jl")

# include functionality for managing runtime (dynamic) glass cats: MIL_GLASSES and MODEL_GLASSES
include("runtime.jl")
export glassfromMIL, modelglass

# include functions for searching the glass cats
include("search.jl")
export glasscatalogs, glassnames, findglass

include("utilities.jl")
export plot_indices, index, polyfit_indices, absairindex, absorption, drawglassmap

# include utility functions for maintaining the AGF source list
#TODO figure out how to export this even though add_agf is defined in the artifacts directory.
# include("sources.jl")
# export add_agf

# include build utility scripts to make testing them a bit easier
include("generate.jl")

end # module
export AGFFileReader
