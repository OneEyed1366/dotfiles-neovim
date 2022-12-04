local basic_fterm = {}

basic_fterm.packages = {
  ["FTerm"] = {
    "numToStr/FTerm.nvim",
  }
}

basic_fterm.binds = {
  {mode = "n", {
    { "`<Space>", "<CMD>lua require('FTerm').toggle()<CR>", name = 'Toggle' }
  }},
  {mode = "t", {
    { "`<Space>", "<CMD>lua require('FTerm').toggle()<CR>", name = 'Toggle' }
  }}
}

return basic_fterm
