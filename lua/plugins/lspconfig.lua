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
        end
}
