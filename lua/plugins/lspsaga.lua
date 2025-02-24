return {
        "nvimdev/lspsaga.nvim",
        dependencies = {
                "nvim-treesitter/nvim-treesitter",
                "nvim-tree/nvim-web-devicons"
        },
        event = "LspAttach",
        config = function()
                require("lspsaga").setup({})
        end,
        keys = {
                { "]]",            "<CMD>Lspsaga diagnostic_jump_next<CR>",            desc = "Code: next error" },
                { "[[",            "<CMD>Lspsaga diagnostic_jump_prev<CR>",            desc = "Code: prev error" },
                { "K",             "<CMD>Lspsaga hover_doc<CR>",                       desc = "Code: Doc" },
                { "<leader>c<CR>", "<CMD>Lspsaga code_action<CR>",                     desc = "Code: actions" },
                { "<leader>cr",    "<CMD>Lspsaga rename<CR>",                          desc = "Code: rename" },
                { "<leader>ca",    "<CMD>Telescope lsp_definitions<CR>",               desc = "Code: Definition" },
                { "<leader>c.",    "<CMD>Telescope lsp_document_symbols<CR>",          desc = "Code: doc symbols" },
                { "<leader>ci",    "<CMD>Telescope lsp_dynamic_workspace_symbols<CR>", desc = "Code: workspace symbols" },
                { "<leader>c,",    "<CMD>Telescope lsp_references<CR>",                desc = "Code: Finder" },
        }
}
