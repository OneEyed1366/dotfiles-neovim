-- VSCode Neovim: Only Hop keybindings (everything else moved to VSCode keybindings.json)
return {
  "folke/which-key.nvim",
  lazy = false,
  config = function()
    local wk = require("which-key")

    -- Insert mode: jk to escape
    wk.register({
      ["jk"] = { "<ESC>", "Exit insert mode", mode = "i" }
    })

    -- Clear search highlight on ESC
    wk.register({
      ["<ESC>"] = { "<CMD>noh<CR>", "Remove search highlight", mode = "n" }
    })

    -- Hop keybindings (requires hop.nvim plugin - can't be done in VSCode natively)
    wk.register({
      ["f"] = { "<CMD>HopWord<CR>", "Hop: Jump between words" },
      ["F"] = { "<CMD>HopPattern<CR>", "Hop: Jump to pattern" },
      ["t"] = { "<CMD>HopChar1<CR>", "Hop: Jump to char" },
      ["T"] = { "<CMD>HopChar2<CR>", "Hop: Jump to 2 chars" },
      ["<leader>f"] = { "<CMD>HopAnywhere<CR>", "Hop: Jump anywhere" },
    })
  end
}
