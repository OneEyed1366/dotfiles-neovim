return {
        'stevearc/oil.nvim',
        opts = {},
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
                require("oil").setup()
        end,
        keys = {
                { mode = "n", "<leader>.", "<CMD>Oil --float<CR>", desc = "Oil.nvim: open" }
        },
}
