using StatisticalDB
using Documenter

DocMeta.setdocmeta!(StatisticalDB, :DocTestSetup, :(using StatisticalDB); recursive=true)

makedocs(;
    modules=[StatisticalDB],
    authors="Kun Chen, Daniel Cerkoney",
    repo="https://github.com/numericalEFT/StatisticalDB.jl/blob/{commit}{path}#{line}",
    sitename="StatisticalDB.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://numericaleft.github.io/StatisticalDB.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/numericalEFT/StatisticalDB.jl",
    devbranch="master",
)
