require("packer").use {
    "numToStr/FTerm.nvim",

    config = function ()
        local map = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }

        map("n", "`<Space>", "<CMD>lua require('FTerm').toggle()<CR>", opts)
        map("t", "`<Space>", "<CMD>lua require('FTerm').toggle()<CR>", opts)
    end
}
