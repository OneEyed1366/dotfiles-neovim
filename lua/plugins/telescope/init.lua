return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- 'brookhong/telescope-pathogen.nvim',
        'nvim-telescope/telescope-file-browser.nvim',
        --
        'paopaol/telescope-git-diffs.nvim',
        'sindrets/diffview.nvim'
        --
    },
    keys = {
        -- { mode = "n", "/", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Fuzzy search buffer" },
        {
            mode = "n",
            "<leader><cr>",
            "<cmd>Telescope commands<cr>",
            desc = "Commands"
        },
        -- HELP
        {
            mode = "n",
            "<leader>ht",
            "<cmd>Telescope help_tags<cr>",
            desc = "Help tags"
        },
        {
            mode = "n",
            "<leader>ht",
            "<cmd>Telescope man_pages<cr>",
            desc = "Help pages"
        },
        -- FILES and BUFFERS
        {
            mode = "v",
            '<leader>f/',
            ":Telescope grep_string<CR>",
            silent = true
        },
        {
            "<leader>/",
            ":Telescope live_grep<CR>",
            silent = true
        },
        {
            "<leader>.",
            "<CMD>Telescope file_browser path=%:p:h select_buffer=true<CR>",
            silent = true,
            noremap = true
        },
        {
            "<leader>>",
            "<CMD>Telescope file_browser<CR>",
            silent = true,
            noremap = true
        },
        {
            "<leader>ff",
            ":Telescope find_files<CR>",
            silent = true
        },
        -- { mode = "n", "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
        -- { mode = "n", "<leader>/", "<cmd>Telescope live_grep<cr>", desc = "Find in files" },
        {
            mode = "n",
            "<leader>,",
            "<cmd>Telescope buffers<cr>",
            desc =
            "Buffers"
        },

        -- GIT

        -- { mode = "n", "<leader>g.", "<cmd>Telescope git_bcommits<cr>", desc = "Git commits for buffer" },
        {
            mode = "n",
            "<leader>gf",
            "<cmd>Telescope git_files<cr>",
            desc =
            "Git list"
        },
        {
            mode = "n",
            "<leader>g.",
            "<cmd>Telescope git_bcommits<cr>",
            desc =
            "Git commits for repo"
        },
        {
            mode = "n",
            "<leader>g>",
            "<cmd>Telescope git_commits<cr>",
            desc =
            "Git commits for repo"
        },
        {
            mode = "n",
            "<leader>g,",
            "<cmd>Telescope git_diffs  diff_commits<cr>",
            desc =
            "Git diff commits for repo"
        },
        {
            mode = "n",
            "<leader>g<leader>",
            "<cmd>Telescope git_status<cr>",
            desc =
            "Git status for repo"
        },
        {
            mode = "n",
            "<leader>gg",
            "<cmd>Telescope git_stash<cr>",
            desc =
            "Git stashed files for repo"
        },
        -- LSP
        -- {
        --     mode = "n",
        --     "<leader>c<leader>",
        --     "<cmd>Telescope diagnostics<cr>",
        --     desc =
        --     "LSP buffer diagostics"
        -- },
        -- { mode = "n", "<leader>c.", "<cmd>Telescope lsp_document_symbols<cr>", desc = "LSP buffer symbols" },
        -- { mode = "n", "<leader>c>", "<cmd>Telescope lsp_workspace_symbols<cr>", desc = "LSP repo symbols" },
        -- { mode = "n", "<leader>c,", "<cmd>Telescope lsp_references<cr>", desc = "LSP references" },
        -- { mode = "n", "<leader>ca", "<cmd>Telescope lsp_definitions<cr>", desc = "LSP go to definition" },
    },
    config = function()
        local telescope = require("telescope")
        local fb_actions = require("telescope._extensions.file_browser.actions")

        telescope.setup({
            defaults = {
                layout_config = {
                    width = 0.95,
                    height = 0.8,
                    prompt_position = "bottom",
                    preview_cutoff = 120, -- Adjust this value to increase/decrease the preview window size

                    horizontal = {
                        width_padding = 0.1,
                        height_padding = 0.1,
                        preview_width = 0.7, -- Adjust this value to increase/decrease the preview window size in horizontal layout
                    },
                    vertical = {
                        width_padding = 0.1,
                        height_padding = 1,
                        preview_height = 0.95, -- Adjust this value to increase/decrease the preview window size in vertical layout
                    }
                },
            },
            pickers = {
                find_files = {
                    theme = "dropdown"
                },
            },
            extensions = {
                file_browser = {
                    cwd_to_path = false,
                    grouped = false,
                    files = true,
                    add_dirs = true,
                    depth = 1,
                    auto_depth = false,
                    select_buffer = false,
                    hidden = { file_browser = false, folder_browser = false },
                    respect_gitignore = false,
                    -- browse_files
                    -- browse_folders
                    hide_parent_dir = false,
                    collapse_dirs = false,
                    prompt_path = false,
                    quiet = false,
                    dir_icon = "",
                    dir_icon_hl = "Default",
                    display_stat = { date = true, size = true, mode = true },
                    hijack_netrw = false,
                    use_fd = true,
                    git_status = true,
                    mappings = {
                        ["i"] = {
                            ["<A-n>"] = fb_actions.create,
                            ["<S-CR>"] = fb_actions.create_from_prompt,
                            ["<A-r>"] = fb_actions.rename,
                            ["<A-m>"] = fb_actions.move,
                            ["<A-y>"] = fb_actions.copy,
                            ["<A-d>"] = fb_actions.remove,
                            ["<C-o>"] = fb_actions.open,
                            ["<C-g>"] = fb_actions.goto_parent_dir,
                            ["<C-e>"] = fb_actions.goto_home_dir,
                            ["<C-w>"] = fb_actions.goto_cwd,
                            ["<C-t>"] = fb_actions.change_cwd,
                            ["<C-f>"] = fb_actions.toggle_browser,
                            ["<C-h>"] = fb_actions.toggle_hidden,
                            ["<C-s"] = fb_actions.toggle_all,
                            ["<bs>"] = fb_actions.backspace,
                        },
                        ["n"] = {
                            ["n"] = fb_actions.create,
                            ["r"] = fb_actions.rename,
                            ["m"] = fb_actions.move,
                            ["y"] = fb_actions.copy,
                            ["d"] = fb_actions.remove,
                            ["o"] = fb_actions.open,
                            ["g"] = fb_actions.goto_parent_dir,
                            ["e"] = fb_actions.goto_home_dir,
                            ["w"] = fb_actions.goto_cwd,
                            ["t"] = fb_actions.change_cwd,
                            ["f"] = fb_actions.toggle_browser,
                            ["h"] = fb_actions.toggle_hidden,
                            ["s"] = fb_actions.toggle_all,
                        },
                    },
                },
            },
        })


        telescope.load_extension("file_browser")
        -- telescope_cc(telescope)
    end
}
