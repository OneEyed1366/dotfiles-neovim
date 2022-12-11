local lsp_coc = {}

vim.opt.backup = false
vim.opt.writebackup = false
-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 300
-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appear/become resolved.
vim.opt.signcolumn = "yes"

lsp_coc.packages = {
  ["coc_nvim"] = {
    "neoclide/coc.nvim",
    branch = "release",
  },
}

lsp_coc.binds = {
  {
    mode = "i",
    options = { silent = true, expr = true, noremap = true, replace_keycodes = false },
    {
      { "<TAB>", [[coc#pum#visible() ? coc#pum#next(1) : "\<C-i>"]] },
      { "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]] },
      { "<S-CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<S-CR>"]], },
    },
  },
  { "<S-k>", "<CMD>call CocAction('definitionHover')<CR>", name = "Show Definition" },
  { "]", {
    { "]", "<Plug>(coc-diagnostic-next)", name = "Next Error" },
  } },
  { "[", name = "GoTo", {
    { "[", "<Plug>(coc-diagnostic-prev)", name = "Prev Error" },
  } },
  {
    "<leader>c",
    name = "+code",
    {
      { ".", "<CMD>CocList outline<CR>", name = "Symbols" },
      { ",", "<Plug>(coc-references)", name = "Symbol References" },
      {
        "o",
        "call CocActionAsync('runCommand', 'editor.action.organizeImport')",
        name = "Organize imports",
      },
      { "a", "<Plug>(coc-definition)", name = "GoTo Definition" },
      { "r", "<Plug>(coc-rename)", name = "Rename" },
      { "<CR>", "<Plug>(coc-codeaction-selected)", name = "Code Actions" },
      { "<leader>", "<Plug>(coc-fix-current)", name = "Fix" },
    },
  },
}

return lsp_coc
