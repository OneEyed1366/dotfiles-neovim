local utils = require("doom.utils")
local is_plugin_disabled = utils.is_plugin_disabled
local lspconfig = require("lspconfig")
local langs_utils = require('doom.modules.langs_utils')

local config = vim.tbl_deep_extend("force", {
  capabilities = utils.get_capabilities(),
  on_attach = function(client)
    if not is_plugin_disabled("illuminate") then
      utils.illuminate_attach(client)
    end
    if type(doom.lua.on_attach) == "function" then
      doom.lua.on_attach(client)
    end
  end,
})

langs_utils.use_lsp(doom.css.language_server_name, {
  config = config,
})

vim.defer_fn(function()
  require("nvim-treesitter.install").ensure_installed("css")
end, 0)

-- Setup null-ls
if doom.linter then
  local langs_utils = require('doom.modules.langs_utils')
  local null_ls = require("null-ls")

  langs_utils.use_null_ls_source({
    null_ls.builtins.diagnostics.stylelint,
    null_ls.builtins.formatting.stylelint,
  })
end
