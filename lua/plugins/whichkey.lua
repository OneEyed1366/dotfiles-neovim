local keys = require("configs.keymappings")

return {
  "folke/which-key.nvim",
  lazy = false,
  config = function()
    local wk = require("which-key")

    wk.register({
      ["jk"] = { "<ESC>", "Exit insert mode", mode = "i", }
    })


    wk.register({
      ["<ESC>"] = { "<CMD>noh<CR>", "Remove search highlight" },
      ["<Tab>l"] = { "<CMD>bnext<CR>", "Jump to next buffer" },
      ["<Tab>h"] = { "<CMD>bprevious<CR>", "Jump to prev buffer" },
    })
    -- LSP
    wk.register({
      ["K"] = { "<cmd>lua vim.lsp.buf.hover()<cr>", "Hover" },
      ["]]"] = { "<cmd>lua vim.diagnostic.goto_next()<cr>", "Prev error " },
      ["[["] = { "<cmd>lua vim.diagnostic.goto_prev()<cr>", "Next error" },
    })

    wk.register({
      ["<leader>"] = {
        ["m"] = { "<CMD>w<CR>", "Save" },
        ["<Esc>"] = { "<C-\\><C-n>", "Exit insert in terminal", mode = "t" },
        ["<Tab>l"] = { "<CMD>tabnext<CR>", "Jump to next tab" },
        ["<Tab>h"] = { "<CMD>tabprev<CR>", "Jump to next buffer" },
        o = {
          ["t"] = { "<CMD>tabnew<CR>", "Open new tab" }
        },
        t = {
          ["d"] = { "<CMD>tabclose<CR>", "Close tab" },
        },
        b = {
          name = "+buffer",
          ["d"] = { "<cmd>bd<CR>", "Delete" }
        },
        q = {
          name = "+quit",
          ["<Space>"] = { "<CMD>qall<CR>", "Quit all" },
        },
        w = {
          name = "+window",
          ["d"] = { "<CMD>q<CR>", "Close window" },
          ["\\"] = { "<CMD>vsplit<CR><C-W>l", "Split vertical" },
          ["-"] = { "<CMD>split<CR><C-W>j", "Split horizontal" },
          ["k"] = { "<C-W>k", "Go to up windown" },
          ["l"] = { "<C-W>l", "Go to right window" },
          ["j"] = { "<C-W>j", "Go to bottom window" },
          ["h"] = { "<C-W>h", "Go to left window" },
        },
        c = {
          name = "+code",
          ["f"] = { "<cmd>lua vim.lsp.buf.format()<cr>", "Format" },
          ["r"] = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
          ["<cr>"] = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code actions" },
        }
      },
    })
  end
}
