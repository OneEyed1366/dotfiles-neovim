return {
  ["]g"] = { "<CMD>call VSCodeNotify('workbench.action.editor.nextChange')<CR>", "git Go to next chunk" },
  ["[g"] = { "<CMD>call VSCodeNotify('workbench.action.editor.previousChange')<CR>", "git Go to prev chunk" },
  ["<leader>g"] = {
    ["<leader>"] = { "<CMD>call VSCodeNotify('gitlens.openFileHistory')<CR>", "Git" },
    ["/"] = { "<CMD>call VSCodeNotify('gitlens.showCommitSearch')<CR>", "Git search in commits" },
    ["."] = { "<CMD>call VSCodeNotify('git.checkout')<CR>", "Git branches" },
    [","] = { "<CMD>call VSCodeNotify('git.merge')<CR>", "Git merge into current branch" },
    ["m"] = { "<CMD>call VSCodeNotify('git.stage)<CR>", "Git stage stanges" },
    ["u"] = { "<CMD>call VSCodeNotify('git.unstage')<CR>", "Git Undo" },
    ["i"] = { "<CMD>call VSCodeNotify('git.viewLineHistory')<CR>",
      "Git Diff under the cursor" },
  },
}
