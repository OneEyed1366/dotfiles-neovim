return {
        ["<leader>c"] = {
                ["<leader>"] = { "<CMD>call VSCodeNotify('workbench.actions.view.problems')<CR>",
                        "Code Buffer Diagnostics" },
                ["<cr>"] = { "<CMD>call VSCodeNotify('editor.action.codeAction')<CR>",
                        "Code Actions" },
                ["]]"] = { "<CMD>call VSCodeNotify('editor.action.marker.next')<CR>", "Code Next Error" },
                ["[["] = { "<CMD>call VSCodeNotify('editor.action.marker.prev')<CR>",
                        "Code Previous Error" },
                ["a"] = { "<CMD>call VSCodeNotify('editor.action.revealDefinition')<CR>",
                        "Code Reveal Definition" },
                ["r"] = { "<CMD>call VSCodeNotify('editor.action.rename')<CR>", "Code Rename" },
                [","] = { "<CMD>call VSCodeNotify('editor.action.goToReferences')<CR>",
                        "Code Go to References" },
                ["."] = { "<CMD>call VSCodeNotify('workbench.action.gotoSymbol')<CR>",
                        "Code Symbols" },
                ["i"] = { "<CMD>call VSCodeNotify('workbench.action.showAllSymbols')<CR>", "Code workspace symbols" },
        },
}
