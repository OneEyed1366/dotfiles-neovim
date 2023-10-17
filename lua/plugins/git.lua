return {
        "lewis6991/gitsigns.nvim",
        config = function ()
                require("gitsigns").setup()
        end,
        event = "LspAttach",
        keys = {
                { "]g", "<CMD>Gitsigns next_hunk<CR>", "Git: Next change" },
                { "[g", "<CMD>Gitsigns prev_hunk<CR>", "Git: Prev change" },
                { "<leader>gk", "<CMD>Gitsigns preview_hunk<CR>", "Git: Preview hunk"},
                { "<leader>gm", "<CMD>Gitsigns stage_hunk<CR>", "Git: Stage hunk"},
                { "<leader>gu", "<CMD>Gitsigns undo_stage_hunk<CR>", "Git: Unstage hunk"}
        }
}
