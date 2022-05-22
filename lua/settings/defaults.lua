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

cmd [[
colorscheme onedark

autocmd Filetype json,yaml setlocal ts=2 sw=2 sts=0 expandtab

autocmd Filetype html,css,scss,less,stylus setlocal ts=2 sw=2 expandtab

autocmd Filetype dart,javascript,javascriptreact,typescript,typescriptreact,vue setlocal ts=2 sw=2 sts=0 expandtab

autocmd Filetype python,php,lua,vim setlocal ts=4 sw=4 sts=0 expandtab
]]