return {
        "zeioth/none-ls-autoload.nvim",
        event = "BufEnter",
        dependencies = {
                "williamboman/mason.nvim",
                "nvimtools/none-ls.nvim",
                "zeioth/none-ls-external-sources.nvim",
        },
        opts = {
                external_sources = {
                        "none-ls-external-sources.formatting.reformat_gherkin",
                        "none-ls.diagnostics.eslint"
                }
        },
}