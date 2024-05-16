return {
        "neovim/nvim-lspconfig",
        dependencies = {
                "williamboman/mason.nvim",
                "williamboman/mason-lspconfig.nvim",
                "hrsh7th/nvim-cmp",
        },
        config = function()
                local mason = require('mason')
                local lspconfig = require("lspconfig")
                local mason_lspconfig = require('mason-lspconfig')
                local capabilities = vim.lsp.protocol.make_client_capabilities()
                local servers = mason_lspconfig.get_installed_servers()
                local vue_language_server_path = '/node_modules/@vue/language-server'

                capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

                mason.setup()
                mason_lspconfig.setup({})

                for _, server in ipairs(servers) do
                        lspconfig[server].setup {
                                capabilities = capabilities,
                                -- on_attach = function (client, buffer)

                                -- end
                        }
                end

                -- TODO: npm i --global @vue/language-server
                lspconfig.tsserver.setup {
                        init_options = {
                                plugins = {
                                        {
                                                name = '@vue/typescript-plugin',
                                                location = vue_language_server_path,
                                                languages = { 'vue' },
                                        },
                                },
                        },
                        filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
                }

                lspconfig.volar.setup {}
        end
}
