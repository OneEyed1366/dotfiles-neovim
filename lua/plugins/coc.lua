local map = vim.api.nvim_buf_set_keymap
local opts = {noremap = true, silent = true}
local cmd = vim.cmd

require("packer").use {
   "neoclide/coc.nvim", 
   branch ="master",
   run = "yarn install --frozen-lockfile",
   config = function()
   --    map("n", "", [[<CMD>lua require("coc-references")<CR>]], opts)
   end
}
