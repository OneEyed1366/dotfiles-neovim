local lsp = {}

--- Internal state of LSP module
-- Flag to enable/disable completions for <leader>tc keybind.
lsp.__completions_enabled = true

lsp.packages = {
  ["mason-null-ls"] = {
    "jay-babu/mason-null-ls.nvim",
    requires = {
      "williamboman/mason.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    },
  },
}

lsp.configs = {}

lsp.configs["null-ls"] = function()
  require("null_ls").setup({
    sources = {
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.diagnostics.eslint,
      null_ls.builtins.completion.spell,
    },
  })
end

lsp.configs["mason-null-ls"] = function()
  require("mason-null-ls").setup({
    automatic_setup = true,
  })
end

lsp.binds = function()
  return {
    { "K", vim.lsp.buf.hover, name = "Show hover doc" },
    { "]", {
      { "]", "<CMD>lua vim.diagnostic.goto_next()<CR>", name = "Next Error" },
    } },
    { "[", {
      { "[", "<CMD>lua vim.diagnostic.goto_prev()<CR>", name = "Prev Error" },
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
