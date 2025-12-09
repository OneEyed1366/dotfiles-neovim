vim.g.mapleader = " "
vim.g.localmapleader = " "
-- Set vim defaults on first load. To override these, the user can just
-- override vim.opt in their own config, no bells or whistles attached.
vim.opt.relativenumber = true
vim.opt.hidden = true
vim.opt.updatetime = 200
vim.opt.timeoutlen = 400
vim.opt.background = "dark"
vim.opt.completeopt = {
  "menu",
  "menuone",
  "preview",
  "noinsert",
  "noselect",
}
vim.opt.shortmess = "atsc"
vim.opt.inccommand = "split"
vim.opt.path = "**"
vim.opt.signcolumn = "auto:2-3"
vim.opt.foldcolumn = "auto:9"
vim.opt.formatoptions:append("j")
vim.opt.fillchars = {
  vert = "▕",
  fold = " ",
  eob = " ",
  diff = "─",
  msgsep = "‾",
  foldopen = "▾",
  foldclose = "▸",
  foldsep = "│",
}
vim.opt.smartindent = true
vim.opt.copyindent = true
vim.opt.preserveindent = true
vim.opt.cursorline = true
vim.opt.splitright = false
vim.opt.splitbelow = true
vim.opt.scrolloff = 4
vim.opt.showmode = false
vim.opt.mouse = "a"
vim.opt.wrap = false
vim.opt.swapfile = false

vim.opt.tabstop = 4      -- Display hard tabs as 4 spaces (recommended 8)
vim.opt.shiftwidth = 2   -- Indent by 2 spaces (default: 4)
vim.opt.softtabstop = 2  -- When using soft tabs, treat them as 2 spaces (default: 4)
vim.opt.expandtab = true -- Use spaces instead of hard tabs

vim.opt.conceallevel = 0
vim.opt.foldenable = true

vim.opt.clipboard:append("unnamedplus")
vim.cmd("set smartcase")

if vim.fn.exists("+termguicolors") == 1 then
  vim.opt.termguicolors = true
elseif vim.fn.exists("+guicolors") == 1 then
  vim.opt.guicolors = true
end

