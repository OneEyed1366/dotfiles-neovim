return {
  ["<leader>"] = {
    ["."] = { "<CMD>call VSCodeNotify('workbench.files.action.focusFilesExplorer')<CR>", "Sidebar file explorer" },
    ["og"] = { "<CMD>call VSCodeNotify('workbench.scm.focus')<CR>", "Sidebar GIT" }
  }
}
