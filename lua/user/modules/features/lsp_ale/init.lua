local _module = {}

_module.packages = {
  ["ale"] = {
    "dense-analysis/ale"
  }
}

_module.configs = {
  ["ale"] = function()
    -- Set ALE fixers for all filetypes
    vim.b.ale_fixers = {'prettier', 'eslint'}
    vim.b.ale_fix_on_save = 1
    vim.b.ale_completion_enabled = 1
  end
}

_module.binds = {
  { mode = "n", {
    { "K", "<CMD>ALEHover<CR", name = "Show hover doc" }
    { "]", {
      { "]", "<CMD>lua vim.diagnostic.goto_next()<CR>", name = "Next Error" },
    }},
    { "[", {
      { "[", "<CMD>lua vim.diagnostic.goto_prev()<CR>", name = "Prev Error" },
    }},
    {
      "<leader>",
      name = "+prefix",
      {
        {
          "c",
          name = "+code",
          {
            {
              { ".", "<CMD>ALESymbolSearch<CR>", name = "Buffer Symbols" },
              { ",", "<CMD>ALEFindReferences<CR>", name = "Symbol References" },
              { "r", "<CMD>ALERename<CR>", name = "Rename" },
              { "a", "<CMD>ALEGoToDefinition<CR>", name = "GoTo Definition" },
              { "<CR>", "<CMD>ALECodeAction<CR>", name = "Code Actions" },
            },
            {
              "l",
              name = "+lsp",
              {
                { "i", "<cmd>LspInfo<CR>", name = "Inform" },
                { "r", "<cmd>LspRestart<CR>", name = "Restart" },
                { "s", "<cmd>LspStart<CR>", name = "Start" },
                { "d", "<cmd>LspStop<CR>", name = "Disconnect" },
              },
            },
            {
              "d",
              name = "+diagnostics",
              {
                { "[", vim.diagnostic.goto_prev, name = "Jump to prev" },
                { "]", vim.diagnostic.goto_next, name = "Jump to next" },
                { "p", vim.diagnostic.goto_prev, name = "Jump to prev" },
                { "n", vim.diagnostic.goto_next, name = "Jump to next" },
                {
                  "L",
                  function()
                    vim.diagnostic.open_float(0, {
                      focusable = false,
                      border = doom.border_style,
                    })
                  end,
                  name = "Line",
                },
                { "l", vim.diagnostic.setloclist, name = "Loclist" },
              },
            },
          },
        },
      },
    }
  }},
}

return _module
