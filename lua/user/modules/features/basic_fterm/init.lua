local basic_fterm = {}

basic_fterm.packages = {
  ["FTerm"] = {
    "numToStr/FTerm.nvim",
  }
}


basic_fterm.configs = {
  ["FTerm"] = function()
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    map("n", "`<Space>", "<CMD>lua require('FTerm').toggle()<CR>", opts)
    map("t", "`<Space>", "<CMD>lua require('FTerm').toggle()<CR>", opts)
  end
} 

return basic_fterm
