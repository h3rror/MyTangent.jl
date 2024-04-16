using MyTangent
using Documenter

DocMeta.setdocmeta!(MyTangent, :DocTestSetup, :(using MyTangent); recursive=true)

makedocs(;
    modules=[MyTangent],
    authors="hker <hker@cwi.nl> and contributors",
    sitename="MyTangent.jl",
    format=Documenter.HTML(;
        canonical="https://h3rror.github.io/MyTangent.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/h3rror/MyTangent.jl",
    devbranch="main",
)
