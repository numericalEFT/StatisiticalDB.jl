using StatsDataBase
using Documenter

DocMeta.setdocmeta!(StatsDataBase, :DocTestSetup, :(using StatsDataBase); recursive=true)

makedocs(;
    modules=[StatsDataBase],
    authors="Kun Chen, Daniel Cerkoney",
    repo="https://github.com/numericaleft/StatsDataBase.jl/blob/{commit}{path}#{line}",
    sitename="StatsDataBase.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://numericaleft.github.io/StatsDataBase.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/numericaleft/StatsDataBase.jl",
    devbranch="main",
)
