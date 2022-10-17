Global_lsp_auto_install_package = "install-lspconfig"

local mason = {}
local _package_name = "mason"
local _lsp_package = "lspconfig"
local _lsp_mason_lspconfig_package = "mason-lspconfig"

mason.packages = {
  [_package_name] = {
    {
      "williamboman/mason.nvim",
      requires = {
        {"williamboman/mason-lspconfig.nvim"},
        {"neovim/nvim-lspconfig", after = "mason-lspconfig"},
      }
    }
  }
}

mason.configs = {
  [_package_name] = function()
    require("mason").setup()
  end,
  [_lsp_mason_lspconfig_package] = function()
    require("mason-lspconfig").setup({
      automatic_installation = true,
    })
  end,
  [Global_lsp_auto_install_package] = function()
    local lsp_installer = require("nvim-lsp-installer")
    local lspconfig = require("lspconfig")

    lsp_installer.setup {}

    lspconfig.util.default_config = vim.tbl_extend(
      "force",
      lspconfig.util.default_config,
      {
          on_attach = on_attach
      }
    )

    for _, server in ipairs(lsp_installer.get_installed_servers()) do
      local opts = {}

      lspconfig[server.name].setup(opts)
    end
  end
}

mason.binds = {
  {"]", {
    {"]", "vim.diagnostic.goto_nex", name = "Next Error"}
  }},
  {"[",{
    {"[", "vim.diagnostic.goto_prev", name = "Prev Error"}
  }},
  {"<leader>c", {
    {".", "<CMD>Telescope lsp_document_symbols<CR>", name = "Buffer Symbols"},
    {",", "<CMD>Telescope lsp_references<CR>", name = "Symbol References"},
    {"r", "<CMD>lua vim.lsp.buf.rename()<CR>", name = "Rename"},
    {"a", "<CMD>lua vim.lsp.buf.definition()<CR>", name = "GoTo Definition"},
    {"<CR>", "<CMD>lua vim.lsp.buf.code_action()<CR>", name = "Code Actions"},
  }},
}

return mason
