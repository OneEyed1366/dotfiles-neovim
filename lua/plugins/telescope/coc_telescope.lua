vim.opt.backup = false
vim.opt.writebackup = false

-- Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
-- delays and poor user experience
vim.opt.updatetime = 300

-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appeared/became resolved
vim.opt.signcolumn = "yes"

function _G.check_back_space()
        local col = vim.fn.col('.') - 1
        return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

function _G.show_docs()
        local cw = vim.fn.expand('<cword>')
        if vim.fn.index({ 'vim', 'help' }, vim.bo.filetype) >= 0 then
                vim.api.nvim_command('h ' .. cw)
        elseif vim.api.nvim_eval('coc#rpc#ready()') then
                vim.fn.CocActionAsync('doHover')
        else
                vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
        end
end

vim.api.nvim_create_augroup("CocGroup", {})
vim.api.nvim_create_autocmd("CursorHold", {
        group = "CocGroup",
        command = "silent call CocActionAsync('highlight')",
        desc = "Highlight symbol under cursor on CursorHold"
})
-- Setup formatexpr specified filetype(s)
vim.api.nvim_create_autocmd("FileType", {
        group = "CocGroup",
        pattern = "javascript-react,typescript-react,jsx,tsxvue,python,javascript,typescript,json",
        command = "setl formatexpr=CocAction('formatSelected')",
        desc = "Setup formatexpr specified filetype(s)."
})

-- Update signature help on jump placeholder
vim.api.nvim_create_autocmd("User", {
        group = "CocGroup",
        pattern = "CocJumpPlaceholder",
        command = "call CocActionAsync('showSignatureHelp')",
        desc = "Update signature help on jump placeholder"
})

return {
        'fannheyward/telescope-coc.nvim',
        dependencies = {
                'nvim-telescope/telescope.nvim',
                { 'neoclide/coc.nvim', branch = "release", lazy = false },

        },
        keys = {
                -- GIT
                {
                        mode = "n",
                        "]g",
                        "<Plug>(coc-git-nextchunk)",
                        "COC git Go to next chunk"
                },
                {
                        mode = "n",
                        "[g",
                        "<Plug>(coc-git-prevchunk)",
                        "COC git Go to prev chunk"
                },
                {
                        mode = "n",
                        "<leader>gi",
                        "<Plug>(coc-git-chunkinfo)",
                        "COC Git Diff under the cursor"
                },
                {
                        mode = "n",
                        "<leader>gu",
                        "<CMD>CocCommand git.chunkUndo<CR>",
                        "COC Git Undo",
                },
                {
                        mode = "n",
                        "<leader>gm",
                        "<CMD>CocCommand git.chunkStage<CR>",
                        "COC Git Stage",
                },
                {
                        mode = "n",
                        "<leader>gI",
                        "<Plug>(coc-git-commit)",
                        "COC Git Show commit under cursor"
                },
                {
                        mode = 'i',
                        "<TAB>",
                        [[coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()]],
                        noremap = true,
                        expr = true,
                        replace_keycodes = false
                },
                {
                        mode = 'i',
                        "<S-TAB>",
                        [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]],
                        noremap = true,
                        expr = true,
                        replace_keycodes = false
                },
                {

                        mode = "i",
                        "<S-CR>",
                        [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]],
                        noremap = true,
                        expr = true,
                        replace_keycodes = false
                },
                {
                        mode = "n",
                        "<leader>c<leader>",
                        "<cmd>Telescope coc diagnostics<cr>",
                        desc =
                        "COC buffer diagostics"
                },
                {
                        mode = "n",
                        "<leader>c<cr>",
                        "<cmd>Telescope coc<cr>",
                        desc =
                        "LSP COC code actions"
                },
                {
                        mode = "n",
                        "K",
                        '<CMD>lua _G.show_docs()<CR>',
                        silent = true
                },
                {
                        mode = "n", "]]", '<Plug>(coc-diagnostic-next)', silent = true },
                {
                        mode = "n", "[[", '<Plug>(coc-diagnostic-prev)', silent = true },
                -- { mode = "n", "<leader>ca", '<Plug>(coc-definition)', silent = true },
                {
                        mode = "n", "<leader>cr", '<Plug>(coc-rename)', silent = true },
                {
                        mode = "n", "<leader>ca", '<Plug>(coc-definition)', silent = true },
                {
                        mode = "n", "<leader>ca", '<CMD>Telescope coc definitions<CR>', silent = true },
                {
                        mode = "n", "<leader>c,", '<CMD>Telescope coc references_used<CR>', silent = true },
                {
                        mode = "n", "<leader>c.", '<CMD>Telescope coc document_symbols<CR>', silent = true },
                {
                        mode = "n", "<leader>c>", '<CMD>Telescope coc workspace_symbols<CR>', silent = true },
                {
                        mode = "n",
                        "c<cr>",
                        '<CMD>Telescope coc code_actions<CR>',
                        "COC code actions",
                        silent = true
                },
                {
                        mode = "n",
                        "f<cr>",
                        '<CMD>Telescope coc line_code_actions<CR>',
                        "COC line code actions",
                        silent = true
                },
                {
                        mode = "n",
                        "ff<cr>",
                        '<CMD>Telescope coc file_code_actions<CR>',
                        "COC file code actions",
                        silent = true
                }
        },
        config = function()
                local telescope = require("telescope")
                telescope.load_extension("coc")
        end
}
