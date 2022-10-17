doom.use_keybind({
-- Telescope
  {"<leader><CR>", "<CMD>Telescope commands<CR>", name = "All commands"},
-- FS
  {"<leader>.", "<CMD>Telescope file_browser path=%:p:h<CR>", name = "File Browser"},
  {"<leader>M", "<CMD>w!<CR>", name = "Force Write"},
-- Git
  {"[", {
    {"g", "<CMD>lua require\"gitsigns\".prev_hunk()<CR>", name = "Prev diff"},
  }},
  {"]", {
    {"g", "<CMD>lua require\"gitsigns\".next_hunk()<CR>", name = "Next diff"},
  }},
  {"<leader>g", name = "+git", {
    {"C", name = "+Commit", {
      {"c", "<CMD>terminal git commit<CR>", name = "commit"},
      {"a", "<CMD>terminal git commit --amend<CR>", name = "amend"}
    }},
    {"p", "<cmd>terminal git pull<CR>", name = "Pull"},
    {"P", "<cmd>terminal git push<CR>", name = "Pull"},
    {"m", "<cmd>lua require\"gitsigns\".stage_hunk()<CR>", name = "Stage hunk"},
    {"M", "<cmd>lua require\"gitsigns\".stage_buffer()<CR>", name = "Stage buffer"},
    {"u", "<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>", name = "Unstage"},
    {"x", "<cmd>lua require\"gitsigns\".reset_hunk()<CR>", name = "Reset hunk"},
    {"X", "<cmd>lua require\"gitsigns\".reset_buffer()<CR>", name = "Reset buffer"},
    {",", "<cmd>lua require\"gitsigns\".preview_hunk()<CR>", name = "Preview"},
    {"t", "<cmd>lua require\"gitsigns\".blame_line()<CR>", name = "Blame line"},
  }},
-- Buffers
  {"<leader>b", name = "+buffer", {
    {"D", "<CMD>bf!<CR>", name = "Force Delete"},
  }},
-- Open smth
  {"<leader>o", name = "+open", {
    {"<leader>", "<CMD>terminal<CR>", name = "terminal"},
    {"t", "<CMD>TodoTelescope<CR>", name = "TODO's"},
  }},
})

doom.use_autocmd({
  { "BufRead,BufEnter", "*.astro", function() vim.cmd[[set filetype=astro]] end}
})

doom.indent = 2
