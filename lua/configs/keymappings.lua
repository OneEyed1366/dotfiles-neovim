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
  -- Buffers
  {
    "<leader>b",
    name = "+buffer",
    {
      { "D", "<CMD>bdelete!<CR>", name = "Force Delete" },
      { "a", "<CMD>%bd|e#<CR>", name = "Close all except opened" },
      { "A", "<CMD>bufdo bd<CR>", name = "Close all buffers" },
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
