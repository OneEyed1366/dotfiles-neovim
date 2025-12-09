return {
  "rafamadriz/neon",
  dependencies = {
    "sainnhe/sonokai",
    "rebelot/kanagawa.nvim",
    "folke/tokyonight.nvim",
    "aktersnurra/no-clown-fiesta.nvim",
    "alexvzyl/nordic.nvim",
    "jacoborus/tender.vim",
    "shaunsingh/nord.nvim",
    "rmehri01/onenord.nvim"
  },
  config = function()
    vim.cmd [[ set background=dark ]]
    vim.cmd [[ colorscheme kanagawa ]]
  end
}
