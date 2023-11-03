return {
  "williamboman/mason.nvim",
  dependencies = {
    "mfussenegger/nvim-dap",
    "jay-babu/mason-nvim-dap.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "mfussenegger/nvim-lint",
    "rshkarin/mason-nvim-lint",
    -- {
    --   "jay-babu/mason-null-ls.nvim",
    --   event = { "BufReadPre", "BufNewFile" },
    --   dependencies = {
    --     "nvimtools/none-ls.nvim",
    --   },
    -- }
  },
  config = function()
    local mason = require("mason")
    local nvim_lint = require("lint")
    local lspconfig = require("mason-lspconfig")
    local mason_nvim_dap = require("mason-nvim-dap")
    local mason_nvim_lint = require("mason-nvim-lint")
    -- local mason_null_ls = require("mason-null-ls")
    -- local null_ls = require("null-ls")

    mason.setup()
    lspconfig.setup()

    vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]

    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      callback = function()
        nvim_lint.try_lint()
      end,
    })

    mason_nvim_lint.setup()
    -- null_ls.setup({
    --   -- you can reuse a shared lspconfig on_attach callback here
    --   on_attach = function(client, bufnr)
    --       if client.supports_method("textDocument/formatting") then
    --           vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    --           vim.api.nvim_create_autocmd("BufWritePre", {
    --               group = augroup,
    --               buffer = bufnr,
    --               callback = function()
    --                   -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
    --                   -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
    --                   -- vim.lsp.buf.formatting_sync()
    --                 vim.lsp.buf.format({ bufnr = bufnr })
    --               end,
    --           })
    --       end
    --   end,
    -- })
    -- mason_null_ls.setup({
    --   sources = {}
    -- })
    mason_nvim_dap.setup({
      ensure_installed = { "dart", "chrome", "python" },
      handlers = {
        node2 = function(config)
          local dap = require('dap')
          dap.adapters.node2 = {
            type = 'executable',
            command = 'node',
            args = { os.getenv('HOME') .. '/dev/microsoft/vscode-node-debug2/out/src/nodeDebug.js' },
          }
          dap.configurations.javascript = {
            {
              name = 'Launch',
              type = 'node2',
              request = 'launch',
              program = '${file}',
              cwd = vim.fn.getcwd(),
              sourceMaps = true,
              protocol = 'inspector',
              console = 'integratedTerminal',
            },
            {
              -- For this to work you need to make sure the node process is started with the `--inspect` flag.
              name = 'Attach to process',
              type = 'node2',
              request = 'attach',
              processId = require 'dap.utils'.pick_process,
            },
          }
        end
      },
    })
  end,
}
