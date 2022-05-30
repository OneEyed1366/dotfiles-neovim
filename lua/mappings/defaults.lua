local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
-- Типа "Нажимает" на ESC при быстром нажатии jj, чтобы не тянутся
map("i", "jj", "<Esc>", {noremap = true})
-- Стрелочки откл. Использовать hjkl
map("", "<up>", ":echoe `Use k`<CR>", default_opts)
map("", "<down>", ":echoe `Use j`<CR>", default_opts)
map("", "<left>", ":echoe `Use h`<CR>", default_opts)
map("", "<right>", ":echoe `Use l`<CR>", default_opts)
-- Basic mappings for everyday stuff
map("n", "df", [[<CMD>bw<CR>]], default_opts)
map("n", "ff", [[<CMD>bw!<CR>]], default_opts)
map("n", "we", [[<CMD>w<CR>]], default_opts)
map("n", "ww", [[<CMD>wall<CR>]], default_opts)
map("n", "qw", [[<CMD>wq<CR>]], default_opts)
map("n", "qq", [[<CMD>q!<CR>]], default_opts)
----------------------------------------------------------
-- IntelliJ-like keys
----------------------------------------------------------
map("n", "`<Tab>", [[<CMD>Telescope buffers<CR>]], default_opts)
map("n", "``", [[<CMD>lua require"lir.float".toggle()<CR>]], default_opts)
map("n", "`1", [[<CMD>Telescope fd<CR>]], default_opts)
map("n", "`2", [[<CMD>Telescope live_grep<CR>]], default_opts)

