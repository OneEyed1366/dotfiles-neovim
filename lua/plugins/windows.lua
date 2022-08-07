require("packer").use {
    "beauwilliams/focus.nvim",
    config = function()
        require("focus").setup()

        vim.api.nvim_set_keymap("n", "<Tab><Space>", "<CMD>close<CR>", { silent = true })
        vim.api.nvim_set_keymap("n", "<Tab>h", "<CMD>FocusSplitLeft<CR>", { silent = true })
        vim.api.nvim_set_keymap("n", "<Tab>j", "<CMD>FocusSplitDown<CR>", { silent = true })
        vim.api.nvim_set_keymap("n", "<Tab>k", "<CMD>FocusSplitUp<CR>", { silent = true })
        vim.api.nvim_set_keymap("n", "<Tab>l", "<CMD>FocusSplitRight<CR>", { silent = true })
    end
}
