return {
  -- Basic
  {
    "<leader>q",
    name = "+quit",
    {
      { "<Space>", "<CMD>qall<CR>", name = "Quit all" },
    }
  },
  {
    "<leader>w",
    {
      { "\\", "<CMD>vsplit<CR><C-W>l", name = "Split vertical" },
      { "-",  "<CMD>split<CR><C-W>j",  name = "Split horizontal" },
    },
  },
  -- Telescope
  -- { "<leader><CR>", "<CMD>Telescope commands<CR>", name = "All commands" },
  -- FS
  -- { "<leader>.", "<CMD>Telescope file_browser path=%:p:h<CR>", name = "File Browser" },
  -- { "<leader>M", "<CMD>w!<CR>", name = "Force Write" },
  -- Git
  -- { "[", {
  --   { "g", '<CMD>lua require"gitsigns".prev_hunk()<CR>', name = "Prev diff" },
  -- } },
  -- { "]", {
  --   { "g", '<CMD>lua require"gitsigns".next_hunk()<CR>', name = "Next diff" },
  -- } },
  -- {
  --   "<leader>g",
  --   name = "+git",
  --   {
  --     {
  --       "C",
  --       name = "+Commit",
  --       {
  --         { "c", "<CMD>terminal git commit<CR>", name = "commit" },
  --         { "a", "<CMD>terminal git commit --amend<CR>", name = "amend" },
  --       },
  --     },
  --     { "p", "<cmd>terminal git pull<CR>", name = "Pull" },
  --     { "P", "<cmd>terminal git push<CR>", name = "Pull" },
  --     { "m", '<cmd>lua require"gitsigns".stage_hunk()<CR>', name = "Stage hunk" },
  --     { "M", '<cmd>lua require"gitsigns".stage_buffer()<CR>', name = "Stage buffer" },
  --     { "u", '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>', name = "Unstage" },
  --     { "x", '<cmd>lua require"gitsigns".reset_hunk()<CR>', name = "Reset hunk" },
  --     { "X", '<cmd>lua require"gitsigns".reset_buffer()<CR>', name = "Reset buffer" },
  --     { ",", '<cmd>lua require"gitsigns".preview_hunk()<CR>', name = "Preview" },
  --     { "B", "<cmd>Telescope git_branches<CR>", name = "Branches" },
  --   },
  -- },
  -- Buffers
  {
    "<leader>b",
    name = "+buffer",
    {
      { "D", "<CMD>bdelete!<CR>", name = "Force Delete" },
    }
  },
  -- Code
  {
    "<leader>c",
    name = "+code",
    {
      -- { mode = "n", "K",                 "<cmd>lua vim.lsp.buf.hover()<cr>",         desc = "LSP hover" },
      -- { mode = "n", "]]",                "<cmd>lua vim.diagostic.go_next()<cr>",    desc = "LSP hover" },
      -- { mode = "n", "[[",                "<cmd>lua vim.diagostic.go_prev()<cr>",    desc = "LSP hover" },
      -- { mode = "n", "<leader>cr",         "<cmd>lua vim.lsp.buf.rename()<cr>",       desc = "LSP rename" },
      -- { mode = "n", "<leader>c<CR>",     "<cmd>lua vim.lsp.buf.code_action()<cr>",   desc = "LSP code actions" },
    }
  },
  -- Open smth
  -- {
  --   "<leader>o",
  --   name = "+open",
  --   {
  --     { "<leader>", "<CMD>terminal<CR>", name = "terminal" },
  --     { "t", "<CMD>TodoTelescope<CR>", name = "TODO's" },
  --   },
  -- },
}
