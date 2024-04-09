return {
    "voldikss/vim-floaterm",
    dependencies = {
        "jesseduffield/lazygit"
    },
    keys = {
        { "<F12>",      "<CMD>FloatermToggle<CR>" },
        { "<leader>oT", "<CMD>FloatermNew<CR>",         "Open new terminal" },
        { "<leader>og", "<CMD>FloatermNew lazygit<CR>", "Open LazyGIT" },
        { "<leader>bt", "<CMD>FloatermKill<CR>",        "Open LazyGIT" },
        { "<leader>tl", "<CMD>FloatermNext<CR>",        "Next terminal" },
        { "<leader>th", "<CMD>FloatermPrev<CR>",        "Prev terminal" },
        -- T MODE
        -- <LEADER> hotfix
        { mode = "t",   "<leader>",                     "<Space>" },
        { mode = "t",   "<F12>",                        "<CMD>FloatermToggle<CR>" },
        { mode = "t",   "<leader>oT",                   "<CMD>FloatermNew<CR>",         "Open new terminal" },
        { mode = "t",   "<leader>og",                   "<CMD>FloatermNew lazygit<CR>", "Open LazyGIT" },
        { mode = "t",   "<leader>bt",                   "<CMD>FloatermKill<CR>",        "Open LazyGIT" },
        { mode = "t",   "<leader>tl",                   "<CMD>FloatermNext<CR>",        "Next terminal" },
        { mode = "t",   "<leader>th",                   "<CMD>FloatermPrev<CR>",        "Prev terminal" },
    },
    config = function()
        vim.g.floaterm_height = 0.95
        vim.g.floaterm_width = 0.9
    end
}
