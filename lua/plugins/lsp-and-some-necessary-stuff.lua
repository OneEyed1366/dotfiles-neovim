        require("packer").use {
            "neovim/nvim-lspconfig",
            config = function()
                local map = vim.api.nvim_set_keymap
                local opts = { noremap = true, silent = true }
                local servers = { "pyright", "tsserver" }
                local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
                -- after the language server attaches to the current buffer
                local on_attach = function(client, bufnr)
                    -- Enable completion triggered by <c-x><c-o>
                    vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
                end

                -- Mappings.
                -- See `:help vim.diagnostic.*` for documentation on any of the below functions
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
                    -- Show context of currect code via virtual-lines
                    { "haringsrob/nvim_context_vt" },
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
                    { "hrsh7th/nvim-cmp",
                        requires = {
                            { "hrsh7th/cmp-buffer" },
                            { "hrsh7th/cmp-nvim-lsp" },
                            { "L3MON4D3/LuaSnip" },
                        },
                        config = function()
                            local cmp = require("cmp")

                            vim.o.completeopt = "menu,menuone,noselect"

                            cmp.setup({
                                snippet = {
                                    expand = function(args)
                                        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
                                    end,
                                },
                                window = {
                                    completion = cmp.config.window.bordered(),
                                    documentation = cmp.config.window.bordered(),
                                },
                                mapping = cmp.mapping.preset.insert({
                                    -- ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                                    -- ['<C-f>'] = cmp.mapping.scroll_docs(4),
                                    ["<Tab>"] = cmp.mapping(function(fallback)
                                        -- This little snippet will confirm with tab, and if no entry is selected, will confirm the first item
                                        if cmp.visible() then
                                            local entry = cmp.get_selected_entry()
                                            if not entry then
                                                cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
                                            else
                                                cmp.confirm()
                                            end
                                        else
                                            fallback()
                                        end
                                    end, { "i", "s", "c", }),
                                    -- ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                                }),
                                sources = cmp.config.sources({
                                    { name = 'nvim_lsp' },
                                    { name = 'luasnip' }, -- For luasnip users.
                                }, {
                                    { name = 'buffer' },
                                })
                            })
                        end
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
                        require("mini.comment").setup();
                        require("mini.indentscope").setup();
                        require("mini.pairs").setup();
                        require("mini.trailspace").setup();
                        require("mini.cursorword").setup();
                    end},
                    { "Darazaki/indent-o-matic", config = function ()
                        require("indent-o-matic").setup {};
                    end},
                    { "windwp/nvim-ts-autotag",
                        config = function()
                            require("nvim-ts-autotag").setup()
                        end },
                    { "norcalli/nvim-colorizer.lua",
                        config = function() require("colorizer").setup() end
                    },
                    { "sbdchd/neoformat", config = function()
                        vim.cmd[[
                            let g:neoformat_run_all_formatters = 1
                            let g:neoformat_try_node_exe = 1

                            augroup fmt
                                autocmd!
                                autocmd BufWritePre * undojoin | Neoformat
                            augroup END
                        ]]
                    end },
                    { "nacro90/numb.nvim", config = function()
                        require("numb").setup()
                    end },
                    { "ldelossa/litee.nvim", requires = {
                        { "ldelossa/litee-filetree.nvim" },
                        { "kyazdani42/nvim-web-devicons" },
                    }, config = function ()
                        require("litee.lib").setup()
                        require("litee.filetree").setup({
                            use_web_devicons = false,
                            icon_set_custom = {dir = "dir:"},
                        })
                    end }
                },
}
