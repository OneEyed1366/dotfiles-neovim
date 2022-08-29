require("packer").use {
    "beauwilliams/focus.nvim",
    config = function()
        require("focus").setup()

        vim.api.nvim_set_keymap("n", "f<Space>", "<CMD>close<CR>", { silent = true })
        vim.api.nvim_set_keymap("n", "fh", "<CMD>FocusSplitLeft<CR>", { silent = true })
        vim.api.nvim_set_keymap("n", "fj", "<CMD>FocusSplitDown<CR>", { silent = true })
        vim.api.nvim_set_keymap("n", "fk", "<CMD>FocusSplitUp<CR>", { silent = true })
        vim.api.nvim_set_keymap("n", "fl", "<CMD>FocusSplitRight<CR>", { silent = true })
    end
}
