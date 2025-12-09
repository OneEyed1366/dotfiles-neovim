return {
    "folke/which-key.nvim",
    lazy = false,
    config = function()
        local wk = require("which-key")

        wk.setup({
            preset = "classic",
        })

        wk.add({
            -- Insert mode
            { "jk", "<ESC>", desc = "Exit insert mode", mode = "i" },

            -- Motion (Hop)
            { "f", "<CMD>HopWord<CR>", desc = "Jump between words" },
            { "F", "<CMD>HopPattern<CR>", desc = "Jump between patterns" },
            { "t", "<CMD>HopChar1<CR>", desc = "Jump to char" },
            { "T", "<CMD>HopChar2<CR>", desc = "Jump to 2 chars" },

            -- General
            { "<ESC>", "<CMD>noh<CR>", desc = "Remove search highlight" },
            { "<Tab>l", "<CMD>bnext<CR>", desc = "Next buffer" },
            { "<Tab>h", "<CMD>bprevious<CR>", desc = "Prev buffer" },

            -- LSP navigation
            { "K", "<cmd>lua vim.lsp.buf.hover()<cr>", desc = "Hover" },
            { "]]", "<cmd>lua vim.diagnostic.goto_next()<cr>", desc = "Next error" },
            { "[[", "<cmd>lua vim.diagnostic.goto_prev()<cr>", desc = "Prev error" },

            -- Git navigation
            { "]g", "<CMD>Gitsigns next_hunk<CR>", desc = "Next git change" },
            { "[g", "<CMD>Gitsigns prev_hunk<CR>", desc = "Prev git change" },

            -- Leader mappings
            { "<leader>f", "<CMD>HopAnywhere<CR>", desc = "Jump anywhere" },
            { "<leader>m", "<CMD>w<CR>", desc = "Save" },
            { "<leader>r", "<CMD>source $MYVIMRC<CR>", desc = "Reload config" },
            { "<leader>/", "<cmd>Telescope live_grep<CR>", desc = "Search in files" },
            { "<leader>,", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
            { "<leader><cr>", "<cmd>Telescope commands<cr>", desc = "Commands" },
            { "<leader>>", "<CMD>Telescope file_browser<CR>", desc = "File browser" },
            { "<leader>.", "<CMD>Oil --float<CR>", desc = "File explorer (Oil)" },
            { "<leader>1", "<CMD>Oil --float<CR>", desc = "File explorer" },
            { "<leader>2", "<CMD>Telescope git_status<CR>", desc = "Git status" },

            -- Terminal mode
            { "<leader><Esc>", "<C-\\><C-n>", desc = "Exit terminal mode", mode = "t" },
            { "<leader><Tab>l", "<CMD>tabnext<CR>", desc = "Next tab" },
            { "<leader><Tab>h", "<CMD>tabprev<CR>", desc = "Prev tab" },

            -- Groups
            { "<leader>o", group = "open" },
            { "<leader>ot", "<CMD>tabnew<CR>", desc = "New tab" },
            { "<leader>oT", "<CMD>FloatermNew<CR>", desc = "New terminal" },
            { "<leader>og", "<CMD>FloatermNew lazygit<CR>", desc = "LazyGIT" },

            { "<leader>t", group = "tab/terminal" },
            { "<leader>td", "<CMD>tabclose<CR>", desc = "Close tab" },
            { "<leader>tt", "<CMD>FloatermToggle<CR>", desc = "Toggle terminal" },
            { "<leader>tl", "<CMD>FloatermNext<CR>", desc = "Next terminal" },
            { "<leader>th", "<CMD>FloatermPrev<CR>", desc = "Prev terminal" },
            { "<leader>tb", "<CMD>FloatermKill<CR>", desc = "Kill terminal" },
            { "<leader>tj", "<CMD>lua require('dap').toggle_breakpoint()<CR>", desc = "DAP Toggle breakpoint" },

            { "<leader>b", group = "buffer" },
            { "<leader>bd", "<cmd>bd<CR>", desc = "Delete buffer" },
            { "<leader>ba", "<CMD>%bd|e#<CR>", desc = "Close all except current" },
            { "<leader>bA", "<CMD>bufdo bd<CR>", desc = "Close all buffers" },

            { "<leader>q", group = "quit" },
            { "<leader>q<Space>", "<CMD>qall<CR>", desc = "Quit all" },

            { "<leader>w", group = "window" },
            { "<leader>wd", "<CMD>q<CR>", desc = "Close window" },
            { "<leader>w\\", "<CMD>vsplit<CR><C-W>l", desc = "Split vertical" },
            { "<leader>w-", "<CMD>split<CR><C-W>j", desc = "Split horizontal" },
            { "<leader>wk", "<C-W>k", desc = "Go up" },
            { "<leader>wl", "<C-W>l", desc = "Go right" },
            { "<leader>wj", "<C-W>j", desc = "Go down" },
            { "<leader>wh", "<C-W>h", desc = "Go left" },

            { "<leader>c", group = "code" },
            { "<leader>c<leader>", "<cmd>Telescope diagnostics<cr>", desc = "Buffer diagnostics" },
            { "<leader>c<cr>", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code actions" },
            { "<leader>ca", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "Go to definition" },
            { "<leader>cr", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename" },
            { "<leader>c,", "<cmd>Telescope lsp_references<cr>", desc = "Go to references" },
            { "<leader>c.", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Buffer symbols" },
            { "<leader>ci", "<cmd>Telescope lsp_workspace_symbols<cr>", desc = "Workspace symbols" },
            { "<leader>cf", "<cmd>lua vim.lsp.buf.format()<cr>", desc = "Format" },

            { "<leader>g", group = "git" },
            { "<leader>g<leader>", "<cmd>Telescope git_bcommits<cr>", desc = "Git file history" },
            { "<leader>g/", "<cmd>Telescope git_commits<cr>", desc = "Git search commits" },
            { "<leader>g.", "<cmd>Telescope git_branches<cr>", desc = "Git branches" },
            { "<leader>g,", "<CMD>Git merge<CR>", desc = "Git merge" },
            { "<leader>gm", "<CMD>Gitsigns stage_hunk<CR>", desc = "Git stage hunk" },
            { "<leader>gu", "<CMD>Gitsigns reset_hunk<CR>", desc = "Git reset hunk" },
            { "<leader>gx", "<CMD>Gitsigns undo_stage_hunk<CR>", desc = "Git unstage hunk" },
            { "<leader>gi", "<cmd>Telescope git_status<cr>", desc = "Git status (unstaged)" },
            { "<leader>gp", "<CMD>Git pull<CR>", desc = "Git pull" },
            { "<leader>gP", "<CMD>Git push<CR>", desc = "Git push" },
            { "<leader>gr", "<CMD>Git branch -m<CR>", desc = "Git rename branch" },
            { "<leader>gd", "<CMD>Git branch -d<CR>", desc = "Git delete branch" },
            { "<leader>gk", "<CMD>Gitsigns preview_hunk<CR>", desc = "Preview hunk" },
            { "<leader>gf", "<cmd>Telescope git_files<cr>", desc = "Git files" },
            { "<leader>gs", "<cmd>Telescope git_stash<cr>", desc = "Git stash" },

            { "<leader>gc", group = "commits/conflicts" },
            { "<leader>gcc", "<cmd>Telescope conflicts<cr>", desc = "Git conflicts" },
            { "<leader>gcmm", "<cmd>Telescope git_commits<cr>", desc = "Git commits" },
            { "<leader>gcmd", "<cmd>Telescope git_diffs diff_commits<cr>", desc = "Git diff commits" },

            { "<leader>f", group = "files" },
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
            { "<leader>f,", "<CMD>lua require('telescope').extensions.recent_files.pick()<CR>", desc = "Recent files" },
            { "<leader>f/", ":Telescope grep_string<CR>", desc = "Grep selection", mode = "v" },

            { "<leader>a", group = "ai" },
            { "<leader>a.", "<CMD>AvanteToggle<CR>", desc = "AI toggle chat" },
            { "<leader>ak", "<CMD>AvanteAsk<CR>", desc = "AI ask/prompt" },
            { "<leader>ae", "<CMD>AvanteEdit<CR>", desc = "AI edit" },
            { "<leader>ar", "<CMD>AvanteRefresh<CR>", desc = "AI refresh" },
            { "<leader>ac", "<CMD>AvanteClear<CR>", desc = "AI clear" },
            { "<leader>as", "<CMD>AvanteStop<CR>", desc = "AI stop" },

            { "<leader>h", group = "help" },
            { "<leader>ht", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
            { "<leader>hm", "<cmd>Telescope man_pages<cr>", desc = "Man pages" },
        })
    end
}
