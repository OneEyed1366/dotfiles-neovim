require("packer").use {
    "neovim/nvim-lspconfig",
    config = function()
        local map = vim.api.nvim_set_keymap
        local opts = {noremap = true, silent = true}
        local servers = { "pyright", "tsserver" }

        vim.o.completeopt = "menu,menuone,noselect"
        -- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
        -- after the language server attaches to the current buffer
        -- local on_attach = function(client, bufnr)
        --   -- Enable completion triggered by <c-x><c-o>
        --     vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
        --
        --     -- map(bufnr, 'n', '<CR>', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
        --     -- map(bufnr, 'n', '`r', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
        --     -- map(bufnr, 'n', '`a', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
        --     -- map(bufnr, 'n', '`s', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
        -- end
        -- Mappings.
        -- See `:help vim.diagnostic.*` for documentation on any of the below functions
        map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
        map("n", "<CR>", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
        map("n", "`q", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
        map("n", "`w", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
        map('n', '`r', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
        map('n', '`a', '<cmd>lua vim.lsp.buf.definition()<CR>', opts) map('n', '`s', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)

        for _, lsp in pairs(servers) do
          require("lspconfig")[lsp].setup(require("coq").lsp_ensure_capabilities({
            -- on_attach = on_attach,
            -- capabilities = capabilities,
            flags = {
              debounce_text_changes = 150,
            }
          }))
        end
    end,
    requires = {
        {"ms-jpq/coq_nvim", run = "python3 -m coq deps", requires = {
            {"ms-jpq/coq.artifacts"},
            {"ms-jpq/coq.thirdparty"}
        }, config = function() vim.g.coq_settings = { auto_start = "shut-up" } end},
        {"akinsho/flutter-tools.nvim", requires = {{"nvim-lua/plenary.nvim"}}, config = function ()
            require("flutter-tools").setup{}
        end},
        {"williamboman/nvim-lsp-installer",
            config = function()
                require("nvim-lsp-installer").on_server_ready(function(server)
                    local opts = {}

                    server:setup(opts)
                end)
            end,
        },
        {"L3MON4D3/LuaSnip"},
        {"nvim-treesitter/nvim-treesitter",
            run = ":TSUpdate",
            config = function()
                require'nvim-treesitter.configs'.setup {
                  indent = {
                    enable = true
                  },
                  highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                  },
                }
            end
        },
        {"lukas-reineke/indent-blankline.nvim",
            config = function()
                require("indent_blankline").setup {
                    -- for example, context is off by default, use this to turn it on
                    show_current_context = true,
                    show_current_context_start = true,
                }
            end
        },
        {"windwp/nvim-autopairs",
            config = function()
                require("nvim-autopairs").setup{}
            end
        },
        {"windwp/nvim-ts-autotag",
            config = function()
                require("nvim-ts-autotag").setup()
            end},
        {"numToStr/Comment.nvim",
            config = function()
                require("Comment").setup()
            end},
        {"norcalli/nvim-colorizer.lua",
            config = function() require("colorizer").setup() end
        },
        {"mitsuhiko/vim-jinja", config = function()
            vim.cmd[[au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm set ft=jinja]]
        end},
    },
}
