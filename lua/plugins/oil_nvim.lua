return {
        'stevearc/oil.nvim',
        lazy = false,
        dependencies = {
                "nvim-tree/nvim-web-devicons",
                { "JezerM/oil-lsp-diagnostics.nvim", opts = {} },
                { "benomahony/oil-git.nvim", opts = {} },
        },
        config = function()
                require("oil").setup({
                        float = {
                                border = "rounded",
                                padding = 2,
                        },
                })
        end,
}
