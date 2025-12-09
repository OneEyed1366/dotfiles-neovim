return {
  "rafamadriz/neon",
  dependencies = {
    "Mofiqul/vscode.nvim",
    "marko-cerovac/material.nvim",
    "christianchiarulli/nvcode-color-schemes.vim"
  },
  config = function()
    local theme_vscode_colors = require('vscode.colors').get_colors()

    require("vscode").setup({
      transparent = true,
    })

    vim.cmd [[colorscheme nord]]
  end
}
