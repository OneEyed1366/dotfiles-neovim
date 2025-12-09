return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/nvim-cmp",
    },
    config = function()
        local mason = require('mason')
        local mason_lspconfig = require('mason-lspconfig')

        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

        -- Set default capabilities for all LSP servers
        vim.lsp.config('*', {
            capabilities = capabilities,
        })

        mason.setup()

        -- mason-lspconfig will automatically call vim.lsp.enable() for installed servers
        mason_lspconfig.setup({})
    end
}
