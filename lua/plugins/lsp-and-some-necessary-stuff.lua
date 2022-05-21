require("packer").use {
    "neovim/nvim-lspconfig",
    config = function()
        local map = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }
        local servers = { "pyright", "tsserver" }
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        -- after the language server attaches to the current buffer
        local on_attach = function(client, bufnr)
            -- Enable completion triggered by <c-x><c-o>
            vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

        end
        -- Mappings.
        -- See `:help vim.diagnostic.*` for documentation on any of the below functions
        map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
        map("n", "<CR>", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
        map("n", "`q", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
        map("n", "`w", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
        map('n', '`r', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)

        for _, lsp in pairs(servers) do
            require("lspconfig")[lsp].setup {
                on_attach = on_attach,
                capabilities = capabilities,
                flags = {
                    debounce_text_changes = 150,
                }
            }
        end
    end,
    requires = {
        { "akinsho/flutter-tools.nvim", requires = { { "nvim-lua/plenary.nvim" } }, config = function()
            require("flutter-tools").setup {}
        end },
        { "williamboman/nvim-lsp-installer",
            config = function()
                require("nvim-lsp-installer").on_server_ready(function(server)
                    local opts = {}

                    server:setup(opts)
                end)
            end,
        },
        { "nvim-treesitter/nvim-treesitter",
            run = ":TSUpdate",
            config = function()
                require 'nvim-treesitter.configs'.setup {
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
        {"echasnovski/mini.nvim", branch = "stable", config = function()
            require("mini.completion").setup();
            require("mini.comment").setup();
            require("mini.indentscope").setup();
            require("mini.pairs").setup();
            require("mini.trailspace").setup();
            require("mini.cursorword").setup();
        end},
        { "windwp/nvim-ts-autotag",
            config = function()
                require("nvim-ts-autotag").setup()
            end },
        { "norcalli/nvim-colorizer.lua",
            config = function() require("colorizer").setup() end
        }
    },

}
