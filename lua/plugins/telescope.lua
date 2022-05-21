require("packer").use {
    "nvim-telescope/telescope.nvim",
    requires = {
        { "nvim-lua/plenary.nvim" },
        { "nvim-telescope/telescope-file-browser.nvim", config = function()
                    end },
    },
    config = function()
        local map = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }
        local fb_actions = require "telescope".extensions.file_browser.actions
        local action_layout = require("telescope.actions.layout")

        -- Basic stuff
        map("n", "`<Space>", "<CMD>Telescope spell_suggest<CR>", opts)
        map("n", "`=", "<CMD>Telescope diagnostics<CR>", opts)
        -- Lsp stuff
        map("n", "`a", "<CMD>Telescope lsp_definitions<CR>", opts)
        map("n", "`s", "<CMD>Telescope lsp_type_definitions<CR>", opts)
        map("n", "`d", "<CMD>Telescope lsp_references<CR>", opts)
        -- Symbols (functions, variables, etc...)
        map("n", "`3", "<CMD>Telescope lsp_document_symbols<CR>", opts)
        map("n", "`4", "<CMD>Telescope lsp_dynamic_workspace_symbols<CR>", opts)
        -- File browser
        map("n", "``", "<CMD>Telescope file_browser<CR>", opts)
        -- Git
        map("n", "==", "<CMD>Telescope git_status<CR>", opts)
        map("n", "-=", "<CMD>Telescope git_branches<CR>", opts)
        map("n", "0=", "<CMD>Telescope git_commits<CR>", opts)
        map("n", "9=", "<CMD>Telescope git_stash<CR>", opts)
        map("n", "8=", "<CMD>Telescope git_files<CR>", opts)

        require("telescope").setup {
            extensions = {
                file_browser = {
                    mappings = {
                        ["i"] = {
                            -- Telescope file browser
                            ["`n"] = fb_actions.create,
                            ["`p"] = fb_actions.create_from_prompt,
                            ["`r"] = fb_actions.rename,
                            ["`v"] = fb_actions.move,
                            ["`c"] = fb_actions.copy,
                            ["`d"] = fb_actions.remove,
                            ["`o"] = fb_actions.open,
                            ["`i"] = fb_actions.toggle_hidden,
                        },
                        ["n"] = {
                            -- Telescope file browser
                            ["N"] = fb_actions.create,
                            ["NO"] = fb_actions.create_from_prompt,
                            ["R"] = fb_actions.rename,
                            ["V"] = fb_actions.move,
                            ["C"] = fb_actions.copy,
                            ["D"] = fb_actions.remove,
                            ["O"] = fb_actions.open,
                            ["I"] = fb_actions.toggle_hidden,ngs
                        },
                    }
                }
            }
        }
        -- To get telescope-file-browser loaded and working with telescope,
        -- you need to call load_extension, somewhere after setup function:
        require("telescope").load_extension "file_browser"

    end
}
