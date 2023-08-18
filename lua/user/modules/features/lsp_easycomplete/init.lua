local lsp = {}

--- Internal state of LSP module
-- Flag to enable/disable completions for <leader>tc keybind.
lsp.__completions_enabled = true

lsp.packages = {
  ["easycomplete"] = {
    "jayli/vim-easycomplete",
    -- requires = {
    --   "SirVer/ultisnips",
    -- },
  },
}

lsp.configs = {}

lsp.binds = function()
  return {
    { "K", vim.lsp.buf.hover, name = "Show hover doc" },
    { "]", {
      { "]", "<CMD>EasyCompleteNextDiagnostic<CR>", name = "Next Error" },
    } },
    { "[", {
      { "[", "<CMD>EasyCompletePreviousDiagnostic<CR>", name = "Prev Error" },
    } },
    {
      "g",
      {
        { "D", vim.lsp.buf.declaration, "Jump to declaration" },
        { "d", vim.lsp.buf.definition, name = "Jump to definition" },
        { "r", vim.lsp.buf.references, name = "Jump to references" },
        { "i", vim.lsp.buf.implementation, name = "Jump to implementation" },
        { "a", vim.lsp.buf.code_action, name = "Do code action" },
      },
    },
    {
      "<C-",
      {
        { "p>", vim.diagnostic.goto_prev, name = "Jump to prev diagnostic" },
        { "n>", vim.diagnostic.goto_next, name = "Jump to next diagnostic" },
        { "k>", vim.lsp.buf.signature_help, name = "Show signature help" },
      },
    },
    {
      "<leader>",
      name = "+prefix",
      {
        {
          "c",
          name = "+code",
          {
            {
              { ".", "<CMD>Telescope lsp_document_symbols<CR>", name = "Buffer Symbols" },
              { ",", "<CMD>Telescope lsp_references<CR>", name = "Symbol References" },
              { "r", "<CMD>lua vim.lsp.buf.rename()<CR>", name = "Rename" },
              { "a", "<CMD>lua vim.lsp.buf.definition()<CR>", name = "GoTo Definition" },
              { "<CR>", "<CMD>lua vim.lsp.buf.code_action()<CR>", name = "Code Actions" },
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
        {
          "t",
          name = "+tweak",
          {
            {
              "c",
              function()
                lsp.__completions_enabled = not lsp.__completions_enabled
                local bool2str = require("doom.utils").bool2str
                print(string.format("completion=%s", bool2str(lsp.__completions_enabled)))
              end,
              name = "Toggle completion",
            },
          },
        },
      },
    },
  }
end

return lsp
