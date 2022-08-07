require("packer").use {
    'tanvirtin/vgit.nvim',
    requires = {
        'nvim-lua/plenary.nvim'
    },
    config = function ()
        require("vgit").setup({
            keymaps = {
                ['n `z'] = 'hunk_up',
                ['n `x'] = 'hunk_down',
                ['n <Space><Space>'] = 'buffer_history_preview',
                ['n <Space>p'] = 'buffer_hunk_preview',
                ['n <Space>f'] = 'buffer_diff_preview',
              },
              live_blame = {
                  enabled = true,
              },
        })

        vim.o.updatetime = 300
        vim.o.incsearch = false
        vim.wo.signcolumn = 'yes'
    end
}
