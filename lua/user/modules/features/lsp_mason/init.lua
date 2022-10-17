Global_lsp_auto_install_package = "install-lspconfig"

local mason = {}
local _package_name = "mason"
local _lsp_package = "lspconfig"
local _lsp_mason_lspconfig_package = "mason-lspconfig"

mason.packages = {
  [_package_name] = {
    "williamboman/mason.nvim",
  },
  [_lsp_mason_lspconfig_package] = {
    "williamboman/mason-lspconfig.nvim"
  },
  [_lsp_package] = {
    "neovim/nvim-lspconfig",
  }
}

mason.configs = {
  [_package_name] = function()
    require("mason").setup()
  end,
  [_lsp_mason_lspconfig_package] = function()
    local config = require("mason-lspconfig")

    config.setup({
      automatic_installation = true,
    })

    config.setup_handlers {
      function(server_name) -- default handler (optional)
          require("lspconfig")[server_name].setup {}
      end,
    }
  end,
}

mason.binds = {
  {"]", {
    {"]", "<CMD>lua vim.diagnostic.goto_next()<CR>", name = "Next Error"}
  }},
  {"[", {
    {"[", "<CMD>lua vim.diagnostic.goto_prev()<CR>", name = "Prev Error"}
  }},
  {mode = "n", {
    {"<S-k>", "<CMD>lua vim.lsp.buf.hover()<CR>", name = "Show Definition"},
  }},
  {"<leader>c", name = "+code", {
    {".", "<CMD>Telescope lsp_document_symbols<CR>", name = "Buffer Symbols"},
    {",", "<CMD>Telescope lsp_references<CR>", name = "Symbol References"},
    {"r", "<CMD>lua vim.lsp.buf.rename()<CR>", name = "Rename"},
    {"a", "<CMD>lua vim.lsp.buf.definition()<CR>", name = "GoTo Definition"},
    {"<CR>", "<CMD>lua vim.lsp.buf.code_action()<CR>", name = "Code Actions"},
  }},
}

return mason
