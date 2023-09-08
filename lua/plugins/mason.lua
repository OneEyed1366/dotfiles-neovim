return {
  "williamboman/mason.nvim",
  dependencies = {
    "mfussenegger/nvim-dap",
    "jay-babu/mason-nvim-dap.nvim",
  },
  keys = {
    { mode = "n", "<leader>ci", "<cmd>Mason<cr>", desc = "Open Mason" },
  },
  config = function()
    require("mason").setup()
    require("mason-nvim-dap").setup({
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