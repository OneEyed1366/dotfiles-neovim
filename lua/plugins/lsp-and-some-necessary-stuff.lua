require("packer").use {
    "neovim/nvim-lspconfig",
    config = function()
        local map = vim.api.nvim_set_keymap
        local opts = {noremap = true, silent = true}
        local servers = { "pyright", "tsserver" }
        local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
        -- after the language server attaches to the current buffer
        local on_attach = function(client, bufnr)
          -- Enable completion triggered by <c-x><c-o>
            vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

            vim.api.nvim_buf_set_keymap(bufnr, 'n', '<CR>', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
            vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
            vim.api.nvim_buf_set_keymap(bufnr, 'n', '`r', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
            vim.api.nvim_buf_set_keymap(bufnr, 'n', '`a', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
            vim.api.nvim_buf_set_keymap(bufnr, 'n', '`s', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
        end
        -- Mappings.
        -- See `:help vim.diagnostic.*` for documentation on any of the below functions
        map("n", "<CR>", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
        map("n", "`q", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
        map("n", "`w", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)

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
        -- {"neoclide/coc.nvim", 
        --    branch ="master",
        --    run = "yarn install --frozen-lockfile",
        --    config = function()
        --    --    map("n", "", [[<CMD>lua require("coc-references")<CR>]], opts)
        --         vim.cmd[[
        --         """GoTo errors"""
        --         nmap <silent> `q <Plug>(coc-diagnostic-prev)
        --         nmap <silent> `w <Plug>(coc-diagnostic-next)
        --
        --         """GoTo Code navigation"""
        --         nmap <silent> `a <Plug>(coc-definition)
        --         nmap <silent> `s <Plug>(coc-type-definition)
        --         nmap <silent> `z <Plug>(coc-implementation)
        --         nmap <silent> `x <Plug>(coc-references)
        --         """Rename smth"""
        --         nmap `r <Plug>(coc-rename)
        --         ]]
        --     end},
        {"williamboman/nvim-lsp-installer",
            config = function()
                require("nvim-lsp-installer").on_server_ready(function(server)
                    local opts = {}

                    server:setup(opts)
                end)
            end,
        },
        {"L3MON4D3/LuaSnip"},
        {"hrsh7th/nvim-cmp",
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
                  -- ['<C-Space>'] = cmp.mapping.complete(),
                  -- ['<C-e>'] = cmp.mapping.abort(),
                  ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
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
        {"hrsh7th/cmp-buffer"},
        {"hrsh7th/cmp-nvim-lsp"},
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
        }
    },
    
}
