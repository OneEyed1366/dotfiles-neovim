require("packer").use {
    "nvim-telescope/telescope.nvim",
    requires = {
        { "nvim-lua/plenary.nvim" },
    },
    config = function()
        local map = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }

        map("n", "==", "<CMD>Telescope git_status<CR>", opts)
        map("n", "-=", "<CMD>Telescope git_branches<CR>", opts)
        map("n", "0=", "<CMD>Telescope git_commits<CR>", opts)
        map("n", "9=", "<CMD>Telescope git_stash<CR>", opts)
        map("n", "8=", "<CMD>Telescope git_files<CR>", opts)
    end
}
