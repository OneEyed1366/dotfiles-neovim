return {
  ["<leader>"] = {
    ["."] = { "<CMD>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>", "Sidebar Toggle" },
    ["1"] = { "<CMD>call VSCodeNotify('workbench.files.action.focusFilesExplorer')<CR>", "Sidebar file explorer" },
    ["2"] = { "<CMD>call VSCodeNotify('workbench.scm.focus')<CR>", "Sidebar GIT" }
  }
}
