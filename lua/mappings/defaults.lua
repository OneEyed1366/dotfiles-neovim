local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
-- Типа "Нажимает" на ESC при быстром нажатии jj, чтобы не тянутся
map("i", "jj", "<Esc>", {noremap = true})
-- Стрелочки откл. Использовать hjkl
map("", "<up>", ":echoe `Use k`<CR>", default_opts)
map("", "<down>", ":echoe `Use j`<CR>", default_opts)
map("", "<left>", ":echoe `Use h`<CR>", default_opts)
map("", "<right>", ":echoe `Use l`<CR>", default_opts)
-- Переключение вкладок с помощью TAB или shift-tab (akinsho/bufferline.nvim)
map("n", "<Tab>", ":BufferLineCycleNext<CR>", default_opts)
map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", default_opts)
----------------------------------------------------------
-- Conqueror of Competetion keys
----------------------------------------------------------
map("n", "K", [[<cmd>call CocAction("doHover")<cr>]], default_opts)
map("n", "<CR>", [[<CMD>CocAction<CR>]], default_opts)
----------------------------------------------------------
-- IntelliJ-like keys
----------------------------------------------------------
map("n", "`<Tab>", [[<CMD>Telescope buffers<CR>]], default_opts)
map("n", "``", [[<CMD>lua require"lir.float".toggle()<CR>]], default_opts)
map("n", "`1", [[<CMD>Telescope fd<CR>]], default_opts)
map("n", "`2", [[<CMD>Telescope live_grep<CR>]], default_opts)
