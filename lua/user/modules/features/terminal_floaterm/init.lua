local _module = {}
local _main_package = "floaterm.nvim"

_module.packages = {
  [_main_package] = {
    "voldikss/vim-floaterm",
  },
}

_module.binds = {
  {
    mode = "t",
    {
      { "<Space>`<Space>", "<CMD>FloatermToggle<CR>", name = "Toggle termial" },
      { "<Space>`o", "<CMD>FloatermNew<CR>", name = "Open new terminal" },
      { "<Space>`l", "<CMD>FloatermNext<CR>", name = "Next terminal" },
      { "<Space>`g", "<CMD>FloatermNew lazygit<CR>", name = "Terminal - lazygit" },
      { "<Space>`b", "<CMD>FloatermKill<CR>", name = "Close terminal" },
    },
  },
  {
    mode = "n",
    {
      { "<Space>`<Space>", "<CMD>FloatermToggle<CR>", name = "Toggle termial" },
      { "<Space>`o", "<CMD>FloatermNew<CR>", name = "Open new terminal" },
      { "<Space>`l", "<CMD>FloatermNext<CR>", name = "Next terminal" },
      { "<Space>`h", "<CMD>FloatermPrev<CR>", name = "Prev terminal" },
      { "<Space>`g", "<CMD>FloatermNew lazygit<CR>", name = "Terminal - lazygit" },
      { "<Space>`b", "<CMD>FloatermKill<CR>", name = "Close terminal" },
    },
  },
}

_module.configs = {
  [_main_package] = function()
    vim.cmd([[
      let g:floaterm_height = 0.8
      let g:floaterm_width = 0.8
    ]])
  end,
}

return _module
