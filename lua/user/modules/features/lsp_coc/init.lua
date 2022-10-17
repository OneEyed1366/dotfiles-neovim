local lsp_coc = {}

lsp_coc.packages = {
  ["coc_nvim"] = {
    "neoclide/coc.nvim",
    branch = "release",
  },
}

lsp_coc.binds = {
  { mode = "i",
    options = { silent = true, noremap = true, expr = true, replace_keycodes = false },
    {
      {"<TAB>", [[coc#pum#visible() ? coc#pum#next(1) : "\<C-i>"]]},
      {"<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]]},
      {"<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]]}
  }},
  { mode = "n", {
    {"<S-k>", "<CMD>call CocAction('definitionHover')<CR>", name = "Show Definition"}
  }},
  {"]", {
    {"]", "<Plug>(coc-diagnostic-next)", name = "Next Error"}
  }},
  {"[", name = "GoTo", {
    {"[", "<Plug>(coc-diagnostic-prev)", name = "Prev Error"}
  }},
  {"<leader>c", name = "+code", {
    {".", "<CMD>CocList outline<CR>", name = "Symbols"},
    {",", "<Plug>(coc-references)", name = "Symbol References"},
    {"o", "call CocActionAsync('runCommand', 'editor.action.organizeImport')", name = "Organize imports"},
    {"a", "<Plug>(coc-definition)", name = "GoTo Definition"},
    {"r", "<Plug>(coc-rename)", name = "Rename"},
    {"<CR>", "<Plug>(coc-codeaction-selected)", name = "Code Actions"},
    {"<leader>", "<Plug>(coc-fix-current)", name = "Fix"},
  }}
}

return lsp_coc
