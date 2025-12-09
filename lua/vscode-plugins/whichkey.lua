return {
  "folke/which-key.nvim",
  lazy = false,
  config = function()
    local wk = require("which-key")
    local code_keybindings = require("vscode-plugins.code")
    local comment_keys = require("vscode-plugins.comment")
    local dap_keys = require("vscode-plugins.dap")
    local git_keys = require("vscode-plugins.git")
    local terminal_keys = require("vscode-plugins.terminal")
    local files_keys = require("vscode-plugins.files")
    local sidebar_keys = require("vscode-plugins.sidebar")
    local ai_keys = require("vscode-plugins.ai")

    wk.register({
      ["jk"] = { "<ESC>", "Exit insert mode", mode = "i", }
    })


    wk.register({
      ["<ESC>"] = { "<CMD>noh<CR>", "Remove search highlight", mode = "n" },
      ["<Tab>"] = { "<CMD>bnext<CR>", "Jump to next buffer", mode = "n" },
      ["<S-Tab>"] = { "<CMD>bprevious<CR>", "Jump to prev buffer", mode = "n" },
    })

    wk.register({
      ["<leader>"] = {
        ["r<cr>"] = { "<CMD>call VSCodeNotify('workbench.action.reloadWindow')<CR>", "Reload window" },
        ["/"] = { "<CMD>call VSCodeNotify('workbench.action.findInFiles')<CR>", "Search for string in files" },
        [","] = { "<CMD>call VSCodeNotify('workbench.action.showEditorsInActiveGroup')<cr>", "List open buffers" },
        ["<CR>"] = { "<CMD>call VSCodeNotify('workbench.action.showCommands')<CR>", "Commands" },
        ["m"] = { "<CMD>call VSCodeNotify('workbench.action.files.save')<CR>", "Save" },
        ["l"] = { "<CMD>call VSCodeNotify('workbench.action.showNextWindowTab')<CR>", "Next window" },
        ["h"] = { "<CMD>call VSCodeNotify('workbench.action.showPreviousWindowTab')<CR>", "Previous window" },
        ["k"] = { "<CMD>call VSCodeNotify('projectManager.listProjectsNewWindow')<CR>", "Open project in new window" },
        ["K"] = { "<CMD>call VSCodeNotify('workbench.action.newWindow')<CR>", "New VSCode instance" },
        ["<Tab>"] = { "<CMD>call VSCodeNotify('workbench.action.nextEditor')<CR>", "Jump to next tab" },
        ["<S-Tab>"] = { "<CMD>call VSCodeNotify('workbench.action.previousEditor')<CR>", "Jump to previous tab" },
        o = {
          ["t"] = { "<CMD>call VSCodeNotify('workbench.action.files.newUntitledFile')<CR>", "Open new tab" }
        },
        t = {
          ["d"] = { "<CMD>call VSCodeNotify('workbench.action.files.close')<CR>", "Close tab" },
        },
        b = {
          name = "+buffer",
          ["d"] = { "<CMD>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>", "Close editor" }
        },
        q = {
          name = "+quit",
          ["<Space>"] = { "<CMD>call VSCodeNotify('workbench.action.closeWindow')<CR>", "Quit all" },
        },
        w = {
          name = "+window",
          ["d"] = { "<CMD>call VSCodeNotify('workbench.action.closeEditorsAndGroup')<CR>", "Close window" },
          ["\\"] = { "<CMD>call VSCodeNotify('workbench.action.splitEditor')<CR>", "Split horizontal" },
          ["-"] = { "<CMD>call VSCodeNotify('workbench.action.splitEditorOrthogonal')<CR>", "Split vertical" },
          ["k"] = { "<CMD>call VSCodeNotify('workbench.action.navigateUp')<CR>", "Go to up window" },
          ["l"] = { "<CMD>call VSCodeNotify('workbench.action.navigateRight')<CR>", "Go to right window" },
          ["j"] = { "<CMD>call VSCodeNotify('workbench.action.navigateDown')<CR>", "Go to bottom window" },
          ["h"] = { "<CMD>call VSCodeNotify('workbench.action.navigateLeft')<CR>", "Go to left window" },
        },
      },
    })



    wk.register(code_keybindings)
    wk.register(comment_keys)
    wk.register(dap_keys)
    wk.register(git_keys)
    wk.register(terminal_keys)
    wk.register(files_keys)
    wk.register(sidebar_keys)
    wk.register(ai_keys)
  end
}
