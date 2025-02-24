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
  local hop = require("plugins.hop")

  require("lazy").setup({
    which_key,
    hop,
  }, {})
else
  -- local neo_tree = require("plugins.neo-tree")
  -- local formatter = require("plugins.formatter")
  -- local lspsaga = require("plugins.lspsaga")
  -- local coc_telescope = require("plugins.telescope.coc_telescope")
  -- local dap = require("plugins.dap")
  -- local auto_session = require("plugins.auto-session")
  -- local context_vt = require("plugins.context_vt")
  -- local usages = require("plugins.usages")
  -- local chat_gpt = require("plugins.chat-gpt")
  -- local format_on_save = require("plugins.format-on-save")
  -- local persisted = require("plugins.persisted")
  -- local lsp_timeout = require("plugins.lsp-timeout")

  local wtf = require("plugins.wtf")
  local which_key = require("plugins.whichkey")
  local mason = require("plugins.mason")
  local cmp = require("plugins.cmp")
  local lspconfig = require("plugins.lspconfig")
  local scope = require("plugins.scope")
  local git = require("plugins.git")
  local precognition = require("plugins.precognition")
  local hop = require("plugins.hop")

  local telescope = require("plugins.telescope")
  local docker_telescope = require("plugins.telescope.docker_telescope")
  local dap_telescope = require("plugins.telescope.dap_telescope")
  local git_telescope = require("plugins.telescope.git_advanced-search_telescope")

  local colorschemes = require("plugins.colorschemes")

  local signify = require("plugins.signify")
  local treesittier = require("plugins.treesettier")
  local autopairs = require("plugins.autopairs")
  local comments = require("plugins.comment")

  local indent = require("plugins.indent")

  local windows_sizes = require("plugins.window-size")
  local window_transparent = require("plugins.window-transparent")

  local floaterm = require("plugins.terminal")
  local twilight = require("plugins.twilight")
  local noice = require("plugins.noice")
  local oil_nvim = require("plugins.oil_nvim")
  local none_ls = require("plugins.none-ls")
  local none_ls_autoload = require("plugins.none-ls-autoload")


  require("lazy").setup({
    -- formatter,
    -- chat_gpt,
    -- lspsaga,
    -- usages,
    -- context_vt,
    -- auto_session,
    -- coc_telescope,
    -- dap,
    -- format_on_save,
    -- Причина: после 2-4 включений-выключений LSP, глючат LSP сервисы и, возможно, сильно нагружается процессор
    -- lsp_timeout,
    -- Причина выключения: иногда Telescope FileBrowser не может корректно распарсить директории. SessionDelete не помогает
    -- persisted,
    -- precognition,
    hop,
    oil_nvim,
    noice,
    git,
    wtf,
    git_telescope,
    twilight,
    which_key,
    mason,
    cmp,
    lspconfig,
    telescope,
    dap_telescope,
    docker_telescope,
    colorschemes,
    signify,
    treesittier,
    autopairs,
    comments,
    indent,
    windows_sizes,
    window_transparent,
    floaterm,
    scope,
    none_ls,
    none_ls_autoload,
  }, {})
end
