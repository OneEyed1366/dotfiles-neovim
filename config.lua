-- doom.features.auto_install.packages.nvim-lsp-installer
doom.features.auto_install.configs["nvim-lsp-installer"] = function()
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
    for _, server in ipairs(require("nvim-lsp-installer").get_installed_servers()) do
            local opts = {}

            lspconfig[server.name].setup(opts)
    end
end
doom.use_keybind({
-- Telescope
  {"<leader><CR>", "<CMD>Telescope commands<CR>", name = "All commands"},
-- File Browser
  {"<leader>.", "<CMD>Telescope file_browser path=%:p:h<CR>", name = "File Browser"},
-- UI
  {"<leader>t", name = "+tweak", {
    {"b", "<CMD>TransparentToggle<CR>", name = "Toggle Background-Transparent mode"},
  }},
-- LSP
  {"<leader>c", name = "+code", {
    {".", "<CMD>Telescope lsp_document_symbols<CR>", name = "Buffer Symbols"},
    {",", "<CMD>Telescope lsp_references<CR>", name = "Symbol References"},
    {"<CR>", "<CMD>lua vim.lsp.buf.code_action()<CR>", name = "Code Actions"},
    {"r", "<CMD>lua vim.lsp.buf.rename()<CR>", name = "Rename"},
    {"p", "<CMD>lua vim.diagnostic.goto_prev()<CR>", name = "Diagnostic - Prev"},
    {"n", "<CMD>lua vim.diagnostic.goto_next()<CR>", name = "Diagnostic - Next"},
    {"a", "<CMD>lua vim.lsp.buf.definition()<CR>", name = "GoTo Definition"},
  }},
})
-- PACKAGES
doom.use_package({
  "numToStr/FTerm.nvim",
  config = function ()
      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }

      map("n", "`<Space>", "<CMD>lua require('FTerm').toggle()<CR>", opts)
      map("t", "`<Space>", "<CMD>lua require('FTerm').toggle()<CR>", opts)
  end
})
doom.use_package({"xiyaowong/nvim-transparent",
  config = function()
    require("transparent").setup({
        enable = true,
        extra_groups = {

        "BufferLineTabClose",
        "BufferlineBufferSelected",
        "BufferLineFill",
        "BufferLineBackground",
        "BufferLineSeparator",
        "BufferLineIndicatorSelected",
        },
            exclude = {}, -- table: groups you don't want to clear
        })
  end
})
doom.use_package({ "akinsho/flutter-tools.nvim",
  requires = {{ "nvim-lua/plenary.nvim" }},
  config = function()
      require("flutter-tools").setup {}
  end
})
doom.use_package({"sbdchd/neoformat", config = function()
    vim.cmd[[
        let g:neoformat_run_all_formatters = 1
        let g:neoformat_try_node_exe = 1

        augroup fmt
            autocmd!
            autocmd BufWritePre * undojoin | Neoformat
        augroup END
    ]]
  end
})

doom.indent = 2
