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
                local mason_registry = require('mason-registry')

                local capabilities = vim.lsp.protocol.make_client_capabilities()

                local servers = mason_lspconfig.get_installed_servers()
                -- Если просто передавать путь к локально установленному @vue/language-server, lsp падает в проектах
                local vue_language_server_path = mason_registry.get_package('vue-language-server'):get_install_path() .. '/node_modules/@vue/language-server'


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
                lspconfig.ts_ls.setup {
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
