return {
        "nvim-telescope/telescope-dap.nvim",
        dependencies = {
                'nvim-telescope/telescope.nvim',
        },
        keys = {
                {
                        mode = "n",
                        "<leader>tf",
                        "<CMD>Telescope dap list_breakpoints<CR>",
                        "DAP list breakpoint"
                },
                {
                        mode = "n",
                        "<leader>t<cr>",
                        "<CMD>Telescope dap commands<CR>",
                        "DAP list breakpoint"
                },
        },
        config = function()
                local telescope = require("telescope")
                telescope.load_extension("dap")
        end
}
