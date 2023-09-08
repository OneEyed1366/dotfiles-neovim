return {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
        'tpope/vim-commentary',
        'JoosepAlviste/nvim-ts-context-commentstring',
    },
    opts = {
        ensure_installed = {
            'astro', 'css', 'glimmer', 'graphql', 'handlebars', 'html', 'javascript',
            'lua', 'nix', 'php', 'python', 'rescript', 'scss', 'svelte', 'tsx', 'twig',
            'typescript', 'vim', 'vue',
        },
        context_commentstring = {
            enable = true,
        },
    }
}
