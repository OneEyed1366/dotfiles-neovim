return {
    "voldikss/vim-floaterm",
    dependencies = {
        "jesseduffield/lazygit"
    },
    keys = {
        { "<leader>§<leader>", "<CMD>FloatermToggle<CR>" },
        { "<leader>o§", "<CMD>FloatermNew<CR>", "Open new terminal" },
        { "<leader>og", "<CMD>FloatermNew lazygit<CR>", "Open LazyGIT" },
        { "<leader>§b", "<CMD>FloatermKill<CR>", "Open LazyGIT" },
        { "<leader>§l", "<CMD>FloatermNext<CR>", "Next terminal" },
        { "<leader>§h", "<CMD>FloatermPrev<CR>", "Prev terminal" },
        -- T MODE
        -- <LEADER> hotfix
        { mode = "t", "<leader><leader>", "<Space>" },
        { mode = "t", "<leader>§<leader>", "<CMD>FloatermToggle<CR>" },
        { mode = "t", "<leader>o§", "<CMD>FloatermNew<CR>", "Open new terminal" },
        { mode = "t", "<leader>og", "<CMD>FloatermNew lazygit<CR>", "Open LazyGIT" },
        { mode = "t", "<leader>§b", "<CMD>FloatermKill<CR>", "Open LazyGIT" },
        { mode = "t", "<leader>§l", "<CMD>FloatermNext<CR>", "Next terminal" },
        { mode = "t", "<leader>§h", "<CMD>FloatermPrev<CR>", "Prev terminal" },
    },
    config = function()
        vim.g.floaterm_height = 0.95
        vim.g.floaterm_width = 0.9
    end
}
