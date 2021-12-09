using GlassCat
using Documenter

DocMeta.setdocmeta!(GlassCat, :DocTestSetup, :(using GlassCat); recursive=true)

#TODO add plotting examples

makedocs(;
    modules=[GlassCat],
    authors="rambunctiousapple",
    repo="https://github.com/rambunctiousapple/GlassCat.jl/blob/{commit}{path}#{line}",
    sitename="GlassCat.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://rambunctiousapple.github.io/GlassCat.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Reference" => "reference.md"
    ],
)

deploydocs(;
    repo="github.com/rambunctiousapple/GlassCat.jl.git",
    devbranch="main",
    push_preview = true,
)
