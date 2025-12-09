return {
        'olacin/telescope-cc.nvim',
        dependencies = {
                'nvim-telescope/telescope.nvim',
        },
        keys = {
                {
                        mode = "n",
                        "<leader>g<cr>",
                        "<cmd>Telescope conventional_commits<cr>",
                        desc =
                        "Git conventional_commits"
                },
        },
        config = function()
                local telescope = require("telescope")
                telescope.load_extension("conventional_commits")
        end
}
