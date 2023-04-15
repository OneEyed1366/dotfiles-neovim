local _data = {}

_data.packages = {
  ["chatGPT"] = {
    "jackMort/chatGPT.nvim",
    after = "telescope.nvim",
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
}

_data.configs = {
  ["chatGPT"] = function()
    require("chatgpt").setup()
  end,
}

_data.binds = {
  {
    mode = "v",
    {
      {
        "<leader>o",
        name = "+open",
        {
          {
            "i",
            "<CMD>ChatGPTEditWithInstructions<CR>",
            name = "Edit selected text with custom prompt",
          },
          {
            "I",
            "<CMD>ChatGPTRun<CR>",
            name = "Run predefined actions",
          },
        },
      },
    },
  },
  {
    "<leader>o",
    name = "+open",
    {
      { "i", "<CMD>ChatGPT<CR>", name = "Open default ChatGPT window" },
      { "a", "<CMD>ChatGPTActAs<CR>", name = "Open default ChatGPT window" },
    },
  },
}

return _data
