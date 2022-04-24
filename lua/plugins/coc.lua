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

cmd[[
"""GoTo errors"""
nmap <silent> `q <Plug>(coc-diagnostic-prev)
nmap <silent> `w <Plug>(coc-diagnostic-next)

"""GoTo Code navigation"""
nmap <silent> `a <Plug>(coc-definition)
nmap <silent> `s <Plug>(coc-type-definition)
nmap <silent> `z <Plug>(coc-implementation)
nmap <silent> `x <Plug>(coc-references)
"""Rename smth"""
nmap `r <Plug>(coc-rename)
]]
