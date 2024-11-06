using Pkg
using Documenter
using DocumenterVitepress
using VLBIReconEval
Pkg.instantiate()

DocMeta.setdocmeta!(VLBIReconEval, :DocTestSetup, :(using VLBIReconEval); recursive=true)

ENV["JULIA_DEBUG"] = Documenter
makedocs(;
    modules=[VLBIReconEval],
    authors="Rohan Dahale",
    repo="https://github.com/rohandahale/VLBIReconEval.jl/blob/{commit}{path}#{line}",
    sitename="VLBIReconEval.jl",
    warnonly=false,
    format=MarkdownVitepress(;
        repo="https://github.com/rohandahale/VLBIReconEval.jl/",
        devurl = "dev",
        devbranch = "main",
    ),
    pages=[
        "Home" => "index.md",
        "introduction.md",
        "Tutorials" => ["tutorials/tutorial1.md"],
        "api.md"
    ],
)

deploydocs(;
    repo="github.com/rohandahale/VLBIReconEval.jl/",
    devbranch="main",
)