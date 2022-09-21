require("packer").use {
    "nvim-telescope/telescope.nvim",
    requires = {
        { "nvim-lua/plenary.nvim" },
        { "nvim-telescope/telescope-file-browser.nvim", config = function()end }
    },
    config = function()
        local map = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }
        local fb_actions = require "telescope".extensions.file_browser.actions

       -- Basic stuff
        map("n", "<Space>.", "<CMD>Telescope file_browser path=%:p:h<CR>", opts)
        map("n", "<Space>,", "<CMD>Telescope buffers<CR>", opts)
        -- Helpeps
        map("n", "<Spacw>h", "<CMD>Telescope man_pages<CR>", opts)
        -- Symbols and References (functions, variables, etc...)
        map("n", "<Space>ll", "<CMD>Telescope lsp_references<CR>", opts)
        map("n", "<Space>lt", "<CMD>Telescope diagnostics<CR>", opts)
        map("n", "<Space>l.", "<CMD>Telescope lsp_document_symbols<CR>", opts)
        map("n", "<Space>l,", "<CMD>Telescope lsp_dynamic_workspace_symbols<CR>", opts)
        -- File browser
        map("n", "<Space>f.", [[<CMD>Telescope fd<CR>]], opts)
        map("n", "<Space>/", [[<CMD>Telescope live_grep<CR>]], opts)
        -- Git
        map("n", "<Space>g.", "<CMD>Telescope git_files<CR>", opts)
        map("n", "<Space>gg", "<CMD>Telescope git_status<CR>", opts)
        map("n", "<Space>gb", "<CMD>Telescope git_branches<CR>", opts)
        map("n", "<Space>gc", "<CMD>Telescope git_commits<CR>", opts)
        map("n", "<Space>gs", "<CMD>Telescope git_stash<CR>", opts)

        map("n", "`<CR>", "<CMD>Telescope commands<CR>", opts)

        require("telescope").setup {
            extensions = {
                file_browser = {
                    mappings = {
                        ["i"] = {
                            -- Telescope file browser
                            ["`n"] = fb_actions.create,
                            ["`w"] = fb_actions.create_from_prompt,
                            ["`r"] = fb_actions.rename,
                            ["`e"] = fb_actions.move,
                            ["`c"] = fb_actions.copy,
                            ["`d"] = fb_actions.remove,
                            ["`o"] = fb_actions.open,
                            ["`i"] = fb_actions.toggle_hidden,
                        },
                    }
                }
            }
        }
        require("telescope").load_extension "file_browser"
        require("telescope").load_extension("flutter")
    end
}
