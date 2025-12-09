-- Terminal keybindings for Neovim
-- Synced with VSCode keybindings.json
return {
    "voldikss/vim-floaterm",
    lazy = false,  -- Load immediately so keybindings work
    config = function()
        vim.g.floaterm_height = 0.95
        vim.g.floaterm_width = 0.9

        -- Alt+F12 toggle terminal (Ghostty sends <F60> for Alt+F12)
        vim.keymap.set("n", "<F60>", "<CMD>FloatermToggle<CR>", { desc = "Toggle terminal" })
        vim.keymap.set("t", "<F60>", "<CMD>FloatermToggle<CR>", { desc = "Toggle terminal" })

        -- Terminal mode: Esc to exit
        vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
    end
}
