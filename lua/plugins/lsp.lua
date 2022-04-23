local map = vim.api.nvim_buf_set_keymap
local opts = {noremap = true, silent = true}
local servers = { "pyright", "tsserver" }
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

-- Use a loop to conveniently call "setup" on multiple servers and
-- map buffer local keybindings when the language server attaches
end

require("packer").use {
  "neovim/nvim-lspconfig",
  requires = {
    { "tami5/lspsaga.nvim", config = function()
            --- In lsp attach function
        map(0, "n", "gr", "<cmd>Lspsaga rename<cr>", opts)
        map(0, "n", "<CR>", "<cmd>Lspsaga code_action<cr>", opts)
        map(0, "n", "K",  "<cmd>Lspsaga hover_doc<cr>", opts)
        map(0, "n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", opts)
        map(0, "n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", opts)
        map(0, "n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opts)
        map(0, "n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", {})
        map(0, "n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", {})
    end }
  },
  config = function()
    -- Mappings.
    -- See `:help vim.diagnostic.*` for documentation on any of the below functions
    map("n", "<space>e", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
    map("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
    map("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
    map("n", "<space>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)

    for _, lsp in pairs(servers) do
      require("lspconfig")[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
        flags = {
          debounce_text_changes = 150,
        }
      }
    end
  end
}
