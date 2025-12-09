return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      ensure_installed = {
        "bash", "c", "cpp", "css", "dockerfile", "go", "graphql",
        "html", "javascript", "json", "lua", "markdown", "markdown_inline",
        "python", "regex", "ruby", "rust", "scss", "sql", "tsx",
        "typescript", "vim", "vimdoc", "vue", "yaml",
      },
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
