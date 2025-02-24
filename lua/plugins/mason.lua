return {
  "williamboman/mason.nvim",
  dependencies = {
    "mfussenegger/nvim-dap",
    "jay-babu/mason-nvim-dap.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "mfussenegger/nvim-lint",
    "rshkarin/mason-nvim-lint",
  },
  config = function()
    local mason = require("mason")

    local mason_lspconfig = require("mason-lspconfig")
    local mason_nvim_dap = require("mason-nvim-dap")
    local mason_nvim_lint = require("mason-nvim-lint")

    mason.setup()

    mason_lspconfig.setup({
      ensure_installed = {
        -- "lua_ls",
        -- "eslint",
        -- "ts_ls",
        -- "emmet_ls",
        -- "css_variables",
        -- "cssls",
        -- "marksman",
        -- "yamlls",
        -- "volar",
        -- "stylelint_lsp",
        -- "html",
        -- "jsonls",
        -- "cssmodules_ls",
      },
    })

    mason_nvim_lint.setup({
      ensure_installed = {
        "htmlhint",
        "markdownlint",
        "stylelint",
        "eslint_d",
        "jsonlint",
        "prettier",
      },
    })

    mason_nvim_dap.setup({
      ensure_installed = {  },
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
