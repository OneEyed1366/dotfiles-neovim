require("packer").use {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup {
            current_line_blame = true,
            on_attach = function(bufnr)
                local gs = require("gitsigns")

                local function map(mode, l, r, opts)
                  opts = opts or {}
                  opts.buffer = bufnr
                  vim.keymap.set(mode, l, r, opts)
                end

                -- Navigation
                map("n", "`[", function()
                  if vim.wo.diff then return "`[" end

                  vim.schedule(function() gs.next_hunk() end)

                  return "<Ignore>"
                end, {expr=true})

                map("n", "`]", function()
                  if vim.wo.diff then return "`]" end

                  vim.schedule(function() gs.prev_hunk() end)

                  return "<Ignore>"
                end, {expr=true})

                -- Actions
                map("n", "HH", gs.preview_hunk)
                map("n", "HJ", gs.diffthis)
                map("n", "HD", function() gs.diffthis("~") end)
                map("n", "Hd", gs.toggle_deleted)
                map({"n", "v"}, "Hh", "<CMD>Gitsigns stage_hunk<CR>")
                map({"n", "v"}, "Hj", "<CMD>Gitsigns undo_stage_hunk<CR>")
                map("n", "`z", "<CMD>Gitsigns prev_hunk<CR>")
                map("n", "`x", "<CMD>Gitsigns next_hunk<CR>")
                -- map("n", "<leader>hS", gs.stage_buffer)
                -- map("n", "<leader>hu", gs.undo_stage_hunk)
                -- map("n", "<leader>hR", gs.reset_buffer)
                -- map("n", "<leader>hb", function() gs.blame_line{full=true} end)
                -- map("n", "<leader>tb", gs.toggle_current_line_blame)

                -- Text object
                -- map({"o", "x"}, "ih", "<CMD><C-U>Gitsigns select_hunk<CR>")
              end
            }
    end
}
