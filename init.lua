require("configs.settings")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

if vim.g.vscode then
  local which_key = require("vscode-plugins.whichkey")

  require("lazy").setup({
    which_key,
  }, {})
else
  -- local neo_tree = require("plugins.neo-tree")
  local which_key = require("plugins.whichkey")
  local mason = require("plugins.mason")
  local telescope = require("plugins.telescope")
  local coc_telescope = require("plugins.telescope.coc_telescope")
  local docker_telescope = require("plugins.telescope.docker_telescope")
  local dap_telescope = require("plugins.telescope.dap_telescope")
  local colorschemes = require("plugins.colorschemes")
  local signify = require("plugins.signify")
  local treesittier = require("plugins.treesettier")
  local autopairs = require("plugins.autopairs")
  local comments = require("plugins.comment")
  -- local format_on_save = require("plugins.format-on-save")
  local indent = require("plugins.indent")
  local windows_sizes = require("plugins.window-size")
  local window_transparent = require("plugins.window-transparent")
  local dap = require("plugins.dap")
  local floaterm = require("plugins.terminal")
  local auto_session = require("plugins.auto-session")

  require("lazy").setup({
    auto_session,
    which_key,
    mason,
    telescope,
    dap_telescope,
    coc_telescope,
    docker_telescope,
    colorschemes,
    signify,
    treesittier,
    autopairs,
    comments,
    indent,
    windows_sizes,
    window_transparent,
    dap,
    floaterm,
    -- format_on_save,
  }, {})
end
