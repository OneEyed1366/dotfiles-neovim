return {
  ["<leader>a"] = {
    ["."] = { "<CMD>call VSCodeNotify('aichat.show-ai-chat')<CR>", "AI toggle chat" },
    ["k"] = { "<CMD>call VSCodeNotify('aipopup.action.modal.generate')<CR>", "AI inline prompt" }
  }
}
