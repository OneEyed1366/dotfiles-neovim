return {
    "voldikss/vim-floaterm",
    dependencies = {
        "jesseduffield/lazygit"
    },
    keys = {
        { "<leader>0<leader>", "<CMD>FloatermToggle<CR>" },
        { "<leader>o0", "<CMD>FloatermNew<CR>", "Open new terminal" },
        { "<leader>og", "<CMD>FloatermNew lazygit<CR>", "Open LazyGIT" },
        { "<leader>0b", "<CMD>FloatermKill<CR>", "Open LazyGIT" },
        { "<leader>0l", "<CMD>FloatermNext<CR>", "Next terminal" },
        { "<leader>0h", "<CMD>FloatermPrev<CR>", "Prev terminal" },
        -- T MODE
        -- <LEADER> hotfix
        { mode = "t", "<leader><leader>", "<Space>" },
        { mode = "t", "<leader>0<leader>", "<CMD>FloatermToggle<CR>" },
        { mode = "t", "<leader>o0", "<CMD>FloatermNew<CR>", "Open new terminal" },
        { mode = "t", "<leader>og", "<CMD>FloatermNew lazygit<CR>", "Open LazyGIT" },
        { mode = "t", "<leader>0b", "<CMD>FloatermKill<CR>", "Open LazyGIT" },
        { mode = "t", "<leader>0l", "<CMD>FloatermNext<CR>", "Next terminal" },
        { mode = "t", "<leader>0h", "<CMD>FloatermPrev<CR>", "Prev terminal" },
    },
    config = function()
        vim.g.floaterm_height = 0.95
        vim.g.floaterm_width = 0.9
    end
}
