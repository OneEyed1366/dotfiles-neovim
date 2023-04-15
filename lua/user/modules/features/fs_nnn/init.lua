local fs_nnn = {}
local _name = "nnn.nvim"

fs_nnn.packages = {
  [_name] = {
    "luukvbaal/nnn.nvim",
  },
}

fs_nnn.configs = {
  [_name] = function()
    require("nnn").setup()
  end,
}

fs_nnn.binds = {
  { mode = "n", {
    { "<leader>1", "<CMD>NnnPicker<CR>", name = "Open NNN" },
  } },
}

return fs_nnn
