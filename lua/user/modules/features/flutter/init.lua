local _module = {}
local _name = "flutter"

_module.packages = {
  [_name] = {
    "akinsho/flutter-tools.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
    },
  },
}

_module.configs = {
  [_name] = function()
    require("flutter-tools").setup({})
  end,
}

return _module
