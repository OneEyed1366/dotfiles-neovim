return {
        "lewis6991/gitsigns.nvim",
        dependencies = {
                "f-person/git-blame.nvim"
        },
        config = function ()
                require("gitsigns").setup()
                require("gitblame").setup {
                        enabled = true,
                        gitblame_display_virtual_text = 1
                }
        end,
        event = "LspAttach",
        keys = {
                { "]g", "<CMD>Gitsigns next_hunk<CR>", "Next change" },
                { "[g", "<CMD>Gitsigns prev_hunk<CR>", "Prev change" },
                { "<leader>gk", "<CMD>Gitsigns preview_hunk<CR>", "Preview hunk" },
                { "<leader>gm", "<CMD>Gitsigns stage_hunk<CR>", "Stage hunk" },
                { "<leader>gx", "<CMD>Gitsigns undo_stage_hunk<CR>", "Unstage hunk" },
                { "<leader>gu", "<CMD>Gitsigns reset_hunk<CR>", "Reset hunk" }
        }
}
