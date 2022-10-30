local _settings = {}
local _cmp = "nvim-cmp"

_settings.packages = {
  ["cmp-nvim-lsp"] = {
    "hrsh7th/cmp-nvim-lsp",
    commit = "affe808a5c56b71630f17aa7c38e15c59fd648a8",
  },
  [_cmp] = {
    "hrsh7th/nvim-cmp",
    commit = "b1ebdb0a17daaad13606b802780313a32e59781b",
    requires = {
      "L3MON4D3/LuaSnip",
      commit = "53e812a6f51c9d567c98215733100f0169bcc20a",
      module = "luasnip",
    },
  },
  ["cmp-nvim-lua"] = {
    "hrsh7th/cmp-nvim-lua",
    commit = "d276254e7198ab7d00f117e88e223b4bd8c02d21",
    after = "nvim-cmp",
  },
  ["cmp-path"] = {
    "hrsh7th/cmp-path",
    commit = "447c87cdd6e6d6a1d2488b1d43108bfa217f56e1",
    after = "nvim-cmp",
  },
  ["cmp-buffer"] = {
    "hrsh7th/cmp-buffer",
    commit = "3022dbc9166796b644a841a02de8dd1cc1d311fa",
    after = "nvim-cmp",
  },
  ["cmp_luasnip"] = {
    "saadparwaiz1/cmp_luasnip",
    commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36",
    after = "nvim-cmp",
  }
}

_settings.configs = {
  [_cmp] = function()
    local utils = require("doom.utils")

    local cmp_ok, cmp = pcall(require, "cmp")
    local luasnip_ok, luasnip = pcall(require, "luasnip")

    if not cmp_ok or not luasnip_ok then
      return
    end

    -- luasnip.config.set_config(_lsp_settings.snippets)

    local mason_lspconfig = require("mason-lspconfig")
    local replace_termcodes = utils.replace_termcodes

    local source_map = {
      nvim_lsp = "[LSP]",
      luasnip = "[Snp]",
      buffer = "[Buf]",
      nvim_lua = "[Lua]",
      path = "[Path]",
    }

    -- Initalize the cmp toggle if it doesn't exist.
    if _doom.cmp_enable == nil then
      _doom.cmp_enable = true
    end

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body) -- For `luasnip` users.
        end,
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- For luasnip users.
      }, {
        { name = 'buffer' },
      })
    })

    local is_cmp_lsp, cmp_lsp = pcall(require, "cmp_nvim_lsp")
    local capabilities = cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())

    if is_cmp_lsp and capabilities then
      mason_lspconfig.setup_handlers {
        function(server_name) -- default handler (optional)
          local opts = {
            capabilities = capabilities
          }

          require("lspconfig")[server_name].setup(opts)
        end,
      }
    end
  end
}

_settings.binds = {
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

return _settings
