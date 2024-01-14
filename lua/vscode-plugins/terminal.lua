return {
    -- ["<leader>0<leader>"] = { "<CMD>call VSCodeNotify('workbench.action.togglePanel')<CR>",
    --     "Toggle terminal" },
    ["<leader>0g"] = { "<CMD>call VSCodeNotify('workbench.action.terminal.new')<CR>", "Open new terminal" },
    ["<leader>0b"] = { "<CMD>call VSCodeNotify('workbench.action.terminal.kill')<CR>", "Open LazyGIT" },
    ["<leader>0l"] = { "<CMD>call VSCodeNotify('workbench.action.terminal.focusNext')<CR>", "Next terminal" },
    ["<leader>0h"] = { "<CMD>call VSCodeNotify('workbench.action.terminal.focusPrevious')<CR>", "Prev terminal" },
}
