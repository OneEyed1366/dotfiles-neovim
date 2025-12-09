return {
        "zeioth/none-ls-autoload.nvim",
        event = "BufEnter",
        dependencies = {
                "williamboman/mason.nvim",
                "nvimtools/none-ls.nvim",
                "zeioth/none-ls-external-sources.nvim"
        },
        opts = {
                external_sources = {
                        -- Linters not in Mason's registry
                        builtins = {
                                diagnostics = {
                                        ruby = false,
                                        ["clj-kondo"] = false,
                                        inko = false,
                                        janet = false,
                                },
                        },
                },
        },
}
