require("packer").use {
    "beauwilliams/focus.nvim",
    config = function()
        require("focus").setup()

        vim.api.nvim_set_keymap("n", "<Space>w<Space>", "<CMD>close<CR>", { silent = true })
        vim.api.nvim_set_keymap("n", "<Space>wh", "<CMD>FocusSplitLeft<CR>", { silent = true })
        vim.api.nvim_set_keymap("n", "<Space>wj", "<CMD>FocusSplitDown<CR>", { silent = true })
        vim.api.nvim_set_keymap("n", "<Space>wk", "<CMD>FocusSplitUp<CR>", { silent = true })
        vim.api.nvim_set_keymap("n", "<Space>wl", "<CMD>FocusSplitRight<CR>", { silent = true })
    end
}
