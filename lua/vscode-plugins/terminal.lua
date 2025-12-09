return {
    ["<leader>§<leader>"] = { "<CMD>call VSCodeNotify('workbench.action.terminal.toggleTerminal')<CR>",
        "Toggle terminal" },
    ["<leader>o§"] = { "<CMD>call VSCodeNotify('workbench.action.terminal.new')<CR>", "Open new terminal" },
    ["<leader>§b"] = { "<CMD>call VSCodeNotify('workbench.action.terminal.kill')<CR>", "Open LazyGIT" },
    ["<leader>§l"] = { "<CMD>call VSCodeNotify('workbench.action.terminal.focusNext')<CR>", "Next terminal" },
    ["<leader>§h"] = { "<CMD>call VSCodeNotify('workbench.action.terminal.focusPrevious')<CR>", "Prev terminal" },
}
