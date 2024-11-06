using Pkg
using Documenter
using DocumenterVitepress
using Evaluate

DocMeta.setdocmeta!(Evaluate, :DocTestSetup, :(using Evaluate); recursive=true)

ENV["JULIA_DEBUG"] = Documenter
makedocs(;
    modules=[Evaluate],
    authors="Rohan Dahale",
    repo="https://github.com/rohandahale/Evaluate.jl/blob/{commit}{path}#{line}",
    sitename="Evaluate.jl",
    warnonly=false,
    format=MarkdownVitepress(;
        repo="https://github.com/rohandahale/Evaluate.jl/",
        devurl = "dev",
        devbranch = "main",
    ),
    pages=[
        "Home" => "index.md",
        "introduction.md",
        #"Tutorials" => ["tutorials/tutorial1.md"],
        "api.md"
    ],
)

deploydocs(;
    repo="github.com/rohandahale/Evaluate.jl/",
    devbranch="main",
)