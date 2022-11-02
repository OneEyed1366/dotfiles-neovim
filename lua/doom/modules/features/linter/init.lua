local linter = {}

linter.settings = {
  format_on_save = true,
  null_ls_settings = {
    default_timeout = 2000,
  },
}

linter.packages = {
  ["null-ls.nvim"] = {
    "jose-elias-alvarez/null-ls.nvim",
    commit = "8914051a3d399e9715833ad76bbf5fe69ea7faf0",
    after = "nvim-lspconfig",
    requires = {
      "nvim-lua/plenary.nvim"
    }
  },
}

linter.configs = {}
linter.configs["null-ls.nvim"] = function()
  local null_ls = require("null-ls")
  local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
  local lsp_formatting = function(bufnr)
    if type(vim.lsp.buf.format) == "function" then
      vim.lsp.buf.format({
        bufnr = bufnr,
        timeout_ms = linter.settings.default_timeout,
        filter = function(client)
            return client.name == "null-ls"
        end,
      })
    else
      vim.lsp.buf.formatting_sync(nil, linter.settings.default_timeout)
    end
      -- vim.lsp.buf.format({
      --     filter = function(client)
      --         return client.name == "null-ls"
      --     end,
      --     bufnr = bufnr,
      -- })
  end
  

  null_ls.setup({
    sources = {
      null_ls.builtins.code_actions.eslint,
      null_ls.builtins.code_actions.gitsigns,
      null_ls.builtins.completion.luasnip,
      null_ls.builtins.diagnostics.buf,
      null_ls.builtins.diagnostics.editorconfig_checker,
      null_ls.builtins.diagnostics.eslint,
      null_ls.builtins.diagnostics.fish,
      null_ls.builtins.diagnostics.flake8,
      null_ls.builtins.diagnostics.jsonlint,
      null_ls.builtins.diagnostics.luacheck,
      null_ls.builtins.diagnostics.markdownlint,
      null_ls.builtins.diagnostics.mdl,
      null_ls.builtins.diagnostics.stylelint,
      null_ls.builtins.diagnostics.stylint,
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.black,
      null_ls.builtins.formatting.prettier,
      null_ls.builtins.formatting.stylua
    },
    -- you can reuse a shared lspconfig on_attach callback here
    on_attach = function(client, bufnr)
      if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                  if type(vim.lsp.buf.format) == "function" then
                    vim.lsp.buf.format({
                      bufnr = bufnr, 
                      filter = function(filter_client)
                          return filter_client.name == "null-ls"
                      end,
                    })
                  else
                    vim.lsp.buf.formatting_sync(nil, 2000)
                  end
                end,
            })
        end
    end,
  })
end

linter.binds = {
  {
    "<leader>cf",
    function()
      local null_ls_settings = doom.features.linter.settings.null_ls_settings
      if type(vim.lsp.buf.format) == "function" then
        vim.lsp.buf.format({
          timeout_ms = null_ls_settings.default_timeout,
        })
      else
        vim.lsp.buf.formatting_sync(nil, null_ls_settings.default_timeout)
      end
    end,
    name = "Format/Fix",
  },
}

return linter
