return {
    ["<leader>t"] = {
        ["j"] = { "<CMD>call VSCodeNotify('editor.debug.action.toggleBreakpoint')<CR>",
            "DAP Toggle breakpoint" },
        ["l"] = { "<CMD>call VSCodeNotify('editor.debug.action.goToNextBreakpoint')<CR>", "DAP move on" },
        ["h"] = { "<CMD>call VSCodeNotify('editor.debug.action.goToPreviousBreakpoint')<CR>", "DAP step over" },
    }

}
