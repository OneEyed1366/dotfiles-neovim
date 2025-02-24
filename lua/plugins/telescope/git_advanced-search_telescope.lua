return {
        "aaronhallaert/advanced-git-search.nvim",
        dependencies = {
                "nvim-telescope/telescope.nvim",
                "nvim-lua/plenary.nvim",
                "tpope/vim-fugitive",
                "tpope/vim-rhubarb",
                "sindrets/diffview.nvim"
        },
        keys = {
                {"<leader>g/", "<CMD>AdvancedGitSearch<CR>", "Git: Search"}
        },
        config = function ()
                local telescope = require("telescope")
                telescope.load_extension("advanced_git_search")
        end
}
