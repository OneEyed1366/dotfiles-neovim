return {
        "lpoto/telescope-docker.nvim",
        dependencies = {
                'nvim-telescope/telescope.nvim',
                'nvim-lua/plenary.nvim',
        },
        keys = {
                {
                        mode = "n",
                        "<leader>d<cr>",
                        "<cmd>Telescope docker<cr>",
                        desc = "Docker"
                },
        },
        config = function()
                local telescope = require("telescope")
                telescope.load_extension("docker")
        end
}
