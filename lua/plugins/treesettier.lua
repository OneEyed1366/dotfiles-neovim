return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
      highlight = {
        enable = true,
      },
      -- incremental_selection = {
      --   enable = true,
      --   keymaps = {
      --     init_selection = "gnn", -- set to `false` to disable one of the mappings
      --     node_incremental = "grn",
      --     scope_incremental = "grc",
      --     node_decremental = "grm",
      --   },
      -- },
      autotag = {
        enable = true,
      },
    })
  end
}
