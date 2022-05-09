local global = vim.o
local window = vim.wo
local buffer = vim.bo
local cmd = vim.cmd

global.number = true
global.relativenumber = true
-- global.encoding = "utf-8"
global.guifont = "hack_nerd_font:h22"
vim.diagnostic.config({
  virtual_text = false,
})
cmd[[
colorscheme onedark

autocmd Filetype json setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype lua setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype vim setlocal ts=2 sw=2 sts=0 expandtab

autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype scss setlocal ts=2 sw=2 expandtab
autocmd Filetype less setlocal ts=2 sw=2 expandtab
autocmd Filetype stylus setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype typescript setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype javascriptreact setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype typescriptreact setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype dart setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype vue setlocal ts=2 sw=2 sts=0 expandtab

autocmd Filetype python setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype php setlocal ts=4 sw=4 sts=0 expandtab
]]
