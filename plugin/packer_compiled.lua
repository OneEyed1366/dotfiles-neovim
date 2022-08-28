-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/andrejprokopenko/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/andrejprokopenko/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/andrejprokopenko/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/andrejprokopenko/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/andrejprokopenko/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["FTerm.nvim"] = {
    config = { "\27LJ\2\n«\1\0\0\b\0\b\0\0176\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1\18\2\0\0'\4\a\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1K\0\1\0\6t+<CMD>lua require('FTerm').toggle()<CR>\r`<Space>\6n\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/FTerm.nvim",
    url = "https://github.com/numToStr/FTerm.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["flutter-tools.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18flutter-tools\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/flutter-tools.nvim",
    url = "https://github.com/akinsho/flutter-tools.nvim"
  },
  ["focus.nvim"] = {
    config = { "\27LJ\2\n»\3\0\0\6\0\22\0.6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\16\0'\4\17\0005\5\18\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\19\0'\4\20\0005\5\21\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\29<CMD>FocusSplitRight<CR>\v<Tab>l\1\0\1\vsilent\2\26<CMD>FocusSplitUp<CR>\v<Tab>k\1\0\1\vsilent\2\28<CMD>FocusSplitDown<CR>\v<Tab>j\1\0\1\vsilent\2\28<CMD>FocusSplitLeft<CR>\v<Tab>h\1\0\1\vsilent\2\19<CMD>close<CR>\17<Tab><Space>\6n\20nvim_set_keymap\bapi\bvim\nsetup\nfocus\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/focus.nvim",
    url = "https://github.com/beauwilliams/focus.nvim"
  },
  ["indent-o-matic"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19indent-o-matic\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/indent-o-matic",
    url = "https://github.com/Darazaki/indent-o-matic"
  },
  ["litee-filetree.nvim"] = {
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/litee-filetree.nvim",
    url = "https://github.com/ldelossa/litee-filetree.nvim"
  },
  ["litee.nvim"] = {
    config = { "\27LJ\2\n—\1\0\0\4\0\a\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0005\2\4\0005\3\5\0=\3\6\2B\0\2\1K\0\1\0\20icon_set_custom\1\0\1\bdir\tdir:\1\0\1\21use_web_devicons\1\19litee.filetree\nsetup\14litee.lib\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/litee.nvim",
    url = "https://github.com/ldelossa/litee.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nñ\4\0\0\5\0\30\0-6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\t\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0034\4\0\0=\4\b\3=\3\n\0025\3\f\0005\4\v\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\3=\3\22\0025\3\23\0004\4\0\0=\4\r\0034\4\0\0=\4\15\0035\4\24\0=\4\17\0035\4\25\0=\4\19\0034\4\0\0=\4\26\0034\4\0\0=\4\21\3=\3\27\0024\3\0\0=\3\28\0024\3\0\0=\3\29\2B\0\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\14lualine_y\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\nright\bî‚²\tleft\bî‚°\25component_separators\1\0\2\nright\bî‚³\tleft\bî‚±\1\0\4\25always_divide_middle\2\17globalstatus\1\ntheme\fonedark\18icons_enabled\2\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mini.nvim"] = {
    config = { "\27LJ\2\nÆ\1\0\0\3\0\a\0\0266\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\4\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\5\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\6\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\20mini.cursorword\20mini.trailspace\15mini.pairs\21mini.indentscope\nsetup\17mini.comment\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/mini.nvim",
    url = "https://github.com/echasnovski/mini.nvim"
  },
  neoformat = {
    config = { "\27LJ\2\n‚\3\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0â\2                            let g:neoformat_run_all_formatters = 1\n                            let g:neoformat_try_node_exe = 1\n\n                            augroup fmt\n                                autocmd!\n                                autocmd BufWritePre * undojoin | Neoformat\n                            augroup END\n                        \bcmd\bvim\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/neoformat",
    url = "https://github.com/sbdchd/neoformat"
  },
  ["numb.nvim"] = {
    config = { "\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tnumb\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/numb.nvim",
    url = "https://github.com/nacro90/numb.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireÇ\1\0\1\6\1\b\0\26-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\18€-\1\0\0009\1\1\1B\1\1\2\14\0\1\0X\2\t€-\2\0\0009\2\2\0025\4\5\0-\5\0\0009\5\3\0059\5\4\5=\5\6\4B\2\2\1X\2\6€-\2\0\0009\2\a\2B\2\1\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\0À\fconfirm\rbehavior\1\0\0\vSelect\19SelectBehavior\21select_next_item\23get_selected_entry\fvisible¸\3\1\0\v\0\29\00036\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\1'\2\5\0=\2\4\0019\1\6\0005\3\n\0005\4\b\0003\5\a\0=\5\t\4=\4\v\0035\4\15\0009\5\f\0009\5\r\0059\5\14\5B\5\1\2=\5\16\0049\5\f\0009\5\r\0059\5\14\5B\5\1\2=\5\17\4=\4\r\0039\4\18\0009\4\19\0049\4\20\0045\6\23\0009\a\18\0003\t\21\0005\n\22\0B\a\3\2=\a\24\6B\4\2\2=\4\18\0039\4\f\0009\4\25\0044\6\3\0005\a\26\0>\a\1\0065\a\27\0>\a\2\0064\a\3\0005\b\28\0>\b\1\aB\4\3\2=\4\25\3B\1\2\0012\0\0€K\0\1\0\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\n<Tab>\1\0\0\1\4\0\0\6i\6s\6c\0\vinsert\vpreset\fmapping\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\26menu,menuone,noselect\16completeopt\6o\bvim\bcmp\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\2\n`\0\2\6\0\4\0\r6\2\0\0\18\4\0\0\18\5\1\0B\2\3\0016\2\1\0009\2\2\0024\4\0\0B\2\2\0016\2\1\0009\2\3\2\18\4\0\0B\2\2\1K\0\1\0\17setup_client\nsetup\ftsutils\14on_attachÀ\5\1\0\f\0\23\00056\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0004\4\0\0B\2\2\0019\2\4\0016\3\6\0009\3\a\3'\5\b\0009\6\4\0019\6\5\0065\a\t\0006\b\n\0=\b\n\aB\3\4\2=\3\5\0026\2\v\0006\4\0\0'\6\1\0B\4\2\0029\4\f\4B\4\1\0A\2\0\4X\5\22€\a\6\r\0X\a\14€6\a\14\0'\t\15\0B\a\2\0019\a\r\0019\a\3\a5\t\19\0005\n\16\0005\v\17\0=\v\18\n=\n\20\t3\n\21\0=\n\n\tB\a\2\1X\a\6€4\a\0\0009\b\22\0068\b\b\0019\b\3\b\18\n\a\0B\b\2\1E\5\3\3R\5èK\0\1\0\tname\0\17init_options\1\0\0\16preferences\1\0\a%includeInlayEnumMemberValueHints\2,includeInlayFunctionLikeReturnTypeHints\2-includeInlayPropertyDeclarationTypeHints\2\"includeInlayVariableTypeHints\2+includeInlayFunctionParameterTypeHints\1:includeInlayParameterNameHintsWhenArgumentMatchesName\1#includeInlayParameterNameHints\tnone\1\0\1\rhostInfo\vneovim\rits here\nprint\rtsserver\26get_installed_servers\vipairs\14on_attach\1\0\0\nforce\15tbl_extend\bvim\19default_config\tutil\nsetup\14lspconfig\23nvim-lsp-installer\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lsp-ts-utils"] = {
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/nvim-lsp-ts-utils",
    url = "https://github.com/jose-elias-alvarez/nvim-lsp-ts-utils"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-transparent"] = {
    config = { "\27LJ\2\nñ\1\0\0\4\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0024\3\0\0=\3\6\2B\0\2\1K\0\1\0\fexclude\17extra_groups\1\a\0\0\23BufferLineTabClose\29BufferlineBufferSelected\19BufferLineFill\25BufferLineBackground\24BufferLineSeparator BufferLineIndicatorSelected\1\0\1\venable\2\nsetup\16transparent\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/nvim-transparent",
    url = "https://github.com/xiyaowong/nvim-transparent"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n¦\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\vindent\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  nvim_context_vt = {
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/nvim_context_vt",
    url = "https://github.com/haringsrob/nvim_context_vt"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n©\v\0\0\v\0K\0¡\0016\0\0\0009\0\1\0009\0\2\0005\1\3\0006\2\4\0'\4\5\0B\2\2\0029\2\6\0029\2\a\0029\2\b\2\18\3\0\0'\5\t\0'\6\n\0'\a\v\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6\f\0'\a\r\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6\14\0'\a\15\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6\16\0'\a\17\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6\18\0'\a\19\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6\20\0'\a\21\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6\22\0'\a\23\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6\24\0'\a\25\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6\26\0'\a\27\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6\28\0'\a\29\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6\30\0'\a\31\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6 \0'\a!\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6\"\0'\a#\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6$\0'\a%\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6&\0'\a'\0\18\b\1\0B\3\5\0016\3\4\0'\5\5\0B\3\2\0029\3(\0035\5H\0005\6G\0005\aE\0005\b:\0005\t*\0009\n)\2=\n+\t9\n,\2=\n-\t9\n.\2=\n/\t9\n0\2=\n1\t9\n2\2=\n3\t9\n4\2=\n5\t9\n6\2=\n7\t9\n8\2=\n9\t=\t;\b5\t<\0009\n)\2=\n=\t9\n,\2=\n>\t9\n.\2=\n?\t9\n0\2=\n@\t9\n2\2=\nA\t9\n4\2=\nB\t9\n6\2=\nC\t9\n8\2=\nD\t=\t\t\b=\bF\a=\a\a\6=\6\6\5B\3\2\0016\3\4\0'\5\5\0B\3\2\0029\3I\3'\5\a\0B\3\2\0016\3\4\0'\5\5\0B\3\2\0029\3I\3'\5J\0B\3\2\1K\0\1\0\fflutter\19load_extension\1\0\0\1\0\0\rmappings\1\0\0\6I\6O\6D\6C\6E\6R\6W\6N\1\0\0\6i\1\0\0\a`i\18toggle_hidden\a`o\topen\a`d\vremove\a`c\tcopy\a`e\tmove\a`r\vrename\a`w\23create_from_prompt\a`n\1\0\0\vcreate\nsetup <CMD>Telescope commands<CR>\n`<CR>!<CMD>Telescope git_files<CR>\a8=!<CMD>Telescope git_stash<CR>\a9=#<CMD>Telescope git_commits<CR>\a0=$<CMD>Telescope git_branches<CR>\a-=\"<CMD>Telescope git_status<CR>\a==/<CMD>Telescope file_browser path=%:p:h<CR>\a``!<CMD>Telescope live_grep<CR>\a`2\26<CMD>Telescope fd<CR>\a`15<CMD>Telescope lsp_dynamic_workspace_symbols<CR>\a`4,<CMD>Telescope lsp_document_symbols<CR>\a`3&<CMD>Telescope lsp_references<CR>\6L!<CMD>Telescope man_pages<CR>\a`h#<CMD>Telescope diagnostics<CR>\a`=\31<CMD>Telescope buffers<CR>\v<Tab>q\6n\factions\17file_browser\15extensions\14telescope\frequire\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vgit.nvim"] = {
    config = { "\27LJ\2\nÊ\2\0\0\4\0\15\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\0016\0\b\0009\0\t\0)\1,\1=\1\n\0006\0\b\0009\0\t\0+\1\1\0=\1\v\0006\0\b\0009\0\f\0'\1\14\0=\1\r\0K\0\1\0\byes\15signcolumn\awo\14incsearch\15updatetime\6o\bvim\15live_blame\1\0\1\fenabled\2\fkeymaps\1\0\0\1\0\5\15n <Space>f\24buffer_diff_preview\tn `x\14hunk_down\tn `z\fhunk_up\15n <Space>p\24buffer_hunk_preview\21n <Space><Space>\27buffer_history_preview\nsetup\tvgit\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/vgit.nvim",
    url = "https://github.com/tanvirtin/vgit.nvim"
  },
  ["vim-plugin-ruscmd"] = {
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/vim-plugin-ruscmd",
    url = "https://github.com/powerman/vim-plugin-ruscmd"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/vim-startify",
    url = "https://github.com/mhinz/vim-startify"
  },
  ["wilder.nvim"] = {
    config = { "\27LJ\2\nç\1\0\0\n\0\r\0\0196\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0019\1\6\0'\3\a\0009\4\b\0009\6\t\0005\b\v\0005\t\n\0=\t\f\bB\6\2\0A\4\0\0A\1\1\1K\0\1\0\15highlights\1\0\1\vborder\frounded\1\0\1\vborder\vNormal\27popupmenu_border_theme\23popupmenu_renderer\rrenderer\15set_option\nmodes\1\0\0\1\4\0\0\6:\6/\6?\nsetup\vwilder\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: indent-o-matic
time([[Config for indent-o-matic]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19indent-o-matic\frequire\0", "config", "indent-o-matic")
time([[Config for indent-o-matic]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n©\v\0\0\v\0K\0¡\0016\0\0\0009\0\1\0009\0\2\0005\1\3\0006\2\4\0'\4\5\0B\2\2\0029\2\6\0029\2\a\0029\2\b\2\18\3\0\0'\5\t\0'\6\n\0'\a\v\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6\f\0'\a\r\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6\14\0'\a\15\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6\16\0'\a\17\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6\18\0'\a\19\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6\20\0'\a\21\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6\22\0'\a\23\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6\24\0'\a\25\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6\26\0'\a\27\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6\28\0'\a\29\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6\30\0'\a\31\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6 \0'\a!\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6\"\0'\a#\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6$\0'\a%\0\18\b\1\0B\3\5\1\18\3\0\0'\5\t\0'\6&\0'\a'\0\18\b\1\0B\3\5\0016\3\4\0'\5\5\0B\3\2\0029\3(\0035\5H\0005\6G\0005\aE\0005\b:\0005\t*\0009\n)\2=\n+\t9\n,\2=\n-\t9\n.\2=\n/\t9\n0\2=\n1\t9\n2\2=\n3\t9\n4\2=\n5\t9\n6\2=\n7\t9\n8\2=\n9\t=\t;\b5\t<\0009\n)\2=\n=\t9\n,\2=\n>\t9\n.\2=\n?\t9\n0\2=\n@\t9\n2\2=\nA\t9\n4\2=\nB\t9\n6\2=\nC\t9\n8\2=\nD\t=\t\t\b=\bF\a=\a\a\6=\6\6\5B\3\2\0016\3\4\0'\5\5\0B\3\2\0029\3I\3'\5\a\0B\3\2\0016\3\4\0'\5\5\0B\3\2\0029\3I\3'\5J\0B\3\2\1K\0\1\0\fflutter\19load_extension\1\0\0\1\0\0\rmappings\1\0\0\6I\6O\6D\6C\6E\6R\6W\6N\1\0\0\6i\1\0\0\a`i\18toggle_hidden\a`o\topen\a`d\vremove\a`c\tcopy\a`e\tmove\a`r\vrename\a`w\23create_from_prompt\a`n\1\0\0\vcreate\nsetup <CMD>Telescope commands<CR>\n`<CR>!<CMD>Telescope git_files<CR>\a8=!<CMD>Telescope git_stash<CR>\a9=#<CMD>Telescope git_commits<CR>\a0=$<CMD>Telescope git_branches<CR>\a-=\"<CMD>Telescope git_status<CR>\a==/<CMD>Telescope file_browser path=%:p:h<CR>\a``!<CMD>Telescope live_grep<CR>\a`2\26<CMD>Telescope fd<CR>\a`15<CMD>Telescope lsp_dynamic_workspace_symbols<CR>\a`4,<CMD>Telescope lsp_document_symbols<CR>\a`3&<CMD>Telescope lsp_references<CR>\6L!<CMD>Telescope man_pages<CR>\a`h#<CMD>Telescope diagnostics<CR>\a`=\31<CMD>Telescope buffers<CR>\v<Tab>q\6n\factions\17file_browser\15extensions\14telescope\frequire\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\bvim\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\n`\0\2\6\0\4\0\r6\2\0\0\18\4\0\0\18\5\1\0B\2\3\0016\2\1\0009\2\2\0024\4\0\0B\2\2\0016\2\1\0009\2\3\2\18\4\0\0B\2\2\1K\0\1\0\17setup_client\nsetup\ftsutils\14on_attachÀ\5\1\0\f\0\23\00056\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0004\4\0\0B\2\2\0019\2\4\0016\3\6\0009\3\a\3'\5\b\0009\6\4\0019\6\5\0065\a\t\0006\b\n\0=\b\n\aB\3\4\2=\3\5\0026\2\v\0006\4\0\0'\6\1\0B\4\2\0029\4\f\4B\4\1\0A\2\0\4X\5\22€\a\6\r\0X\a\14€6\a\14\0'\t\15\0B\a\2\0019\a\r\0019\a\3\a5\t\19\0005\n\16\0005\v\17\0=\v\18\n=\n\20\t3\n\21\0=\n\n\tB\a\2\1X\a\6€4\a\0\0009\b\22\0068\b\b\0019\b\3\b\18\n\a\0B\b\2\1E\5\3\3R\5èK\0\1\0\tname\0\17init_options\1\0\0\16preferences\1\0\a%includeInlayEnumMemberValueHints\2,includeInlayFunctionLikeReturnTypeHints\2-includeInlayPropertyDeclarationTypeHints\2\"includeInlayVariableTypeHints\2+includeInlayFunctionParameterTypeHints\1:includeInlayParameterNameHintsWhenArgumentMatchesName\1#includeInlayParameterNameHints\tnone\1\0\1\rhostInfo\vneovim\rits here\nprint\rtsserver\26get_installed_servers\vipairs\14on_attach\1\0\0\nforce\15tbl_extend\bvim\19default_config\tutil\nsetup\14lspconfig\23nvim-lsp-installer\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: vgit.nvim
time([[Config for vgit.nvim]], true)
try_loadstring("\27LJ\2\nÊ\2\0\0\4\0\15\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\0016\0\b\0009\0\t\0)\1,\1=\1\n\0006\0\b\0009\0\t\0+\1\1\0=\1\v\0006\0\b\0009\0\f\0'\1\14\0=\1\r\0K\0\1\0\byes\15signcolumn\awo\14incsearch\15updatetime\6o\bvim\15live_blame\1\0\1\fenabled\2\fkeymaps\1\0\0\1\0\5\15n <Space>f\24buffer_diff_preview\tn `x\14hunk_down\tn `z\fhunk_up\15n <Space>p\24buffer_hunk_preview\21n <Space><Space>\27buffer_history_preview\nsetup\tvgit\frequire\0", "config", "vgit.nvim")
time([[Config for vgit.nvim]], false)
-- Config for: nvim-transparent
time([[Config for nvim-transparent]], true)
try_loadstring("\27LJ\2\nñ\1\0\0\4\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0024\3\0\0=\3\6\2B\0\2\1K\0\1\0\fexclude\17extra_groups\1\a\0\0\23BufferLineTabClose\29BufferlineBufferSelected\19BufferLineFill\25BufferLineBackground\24BufferLineSeparator BufferLineIndicatorSelected\1\0\1\venable\2\nsetup\16transparent\frequire\0", "config", "nvim-transparent")
time([[Config for nvim-transparent]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nñ\4\0\0\5\0\30\0-6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\t\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0034\4\0\0=\4\b\3=\3\n\0025\3\f\0005\4\v\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\3=\3\22\0025\3\23\0004\4\0\0=\4\r\0034\4\0\0=\4\15\0035\4\24\0=\4\17\0035\4\25\0=\4\19\0034\4\0\0=\4\26\0034\4\0\0=\4\21\3=\3\27\0024\3\0\0=\3\28\0024\3\0\0=\3\29\2B\0\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\14lualine_y\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\nright\bî‚²\tleft\bî‚°\25component_separators\1\0\2\nright\bî‚³\tleft\bî‚±\1\0\4\25always_divide_middle\2\17globalstatus\1\ntheme\fonedark\18icons_enabled\2\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: FTerm.nvim
time([[Config for FTerm.nvim]], true)
try_loadstring("\27LJ\2\n«\1\0\0\b\0\b\0\0176\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1\18\2\0\0'\4\a\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1K\0\1\0\6t+<CMD>lua require('FTerm').toggle()<CR>\r`<Space>\6n\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\bvim\0", "config", "FTerm.nvim")
time([[Config for FTerm.nvim]], false)
-- Config for: mini.nvim
time([[Config for mini.nvim]], true)
try_loadstring("\27LJ\2\nÆ\1\0\0\3\0\a\0\0266\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\4\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\5\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\6\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\20mini.cursorword\20mini.trailspace\15mini.pairs\21mini.indentscope\nsetup\17mini.comment\frequire\0", "config", "mini.nvim")
time([[Config for mini.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n¦\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\vindent\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: neoformat
time([[Config for neoformat]], true)
try_loadstring("\27LJ\2\n‚\3\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0â\2                            let g:neoformat_run_all_formatters = 1\n                            let g:neoformat_try_node_exe = 1\n\n                            augroup fmt\n                                autocmd!\n                                autocmd BufWritePre * undojoin | Neoformat\n                            augroup END\n                        \bcmd\bvim\0", "config", "neoformat")
time([[Config for neoformat]], false)
-- Config for: wilder.nvim
time([[Config for wilder.nvim]], true)
try_loadstring("\27LJ\2\nç\1\0\0\n\0\r\0\0196\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0019\1\6\0'\3\a\0009\4\b\0009\6\t\0005\b\v\0005\t\n\0=\t\f\bB\6\2\0A\4\0\0A\1\1\1K\0\1\0\15highlights\1\0\1\vborder\frounded\1\0\1\vborder\vNormal\27popupmenu_border_theme\23popupmenu_renderer\rrenderer\15set_option\nmodes\1\0\0\1\4\0\0\6:\6/\6?\nsetup\vwilder\frequire\0", "config", "wilder.nvim")
time([[Config for wilder.nvim]], false)
-- Config for: numb.nvim
time([[Config for numb.nvim]], true)
try_loadstring("\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tnumb\frequire\0", "config", "numb.nvim")
time([[Config for numb.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireÇ\1\0\1\6\1\b\0\26-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\18€-\1\0\0009\1\1\1B\1\1\2\14\0\1\0X\2\t€-\2\0\0009\2\2\0025\4\5\0-\5\0\0009\5\3\0059\5\4\5=\5\6\4B\2\2\1X\2\6€-\2\0\0009\2\a\2B\2\1\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\0À\fconfirm\rbehavior\1\0\0\vSelect\19SelectBehavior\21select_next_item\23get_selected_entry\fvisible¸\3\1\0\v\0\29\00036\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\1'\2\5\0=\2\4\0019\1\6\0005\3\n\0005\4\b\0003\5\a\0=\5\t\4=\4\v\0035\4\15\0009\5\f\0009\5\r\0059\5\14\5B\5\1\2=\5\16\0049\5\f\0009\5\r\0059\5\14\5B\5\1\2=\5\17\4=\4\r\0039\4\18\0009\4\19\0049\4\20\0045\6\23\0009\a\18\0003\t\21\0005\n\22\0B\a\3\2=\a\24\6B\4\2\2=\4\18\0039\4\f\0009\4\25\0044\6\3\0005\a\26\0>\a\1\0065\a\27\0>\a\2\0064\a\3\0005\b\28\0>\b\1\aB\4\3\2=\4\25\3B\1\2\0012\0\0€K\0\1\0\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\n<Tab>\1\0\0\1\4\0\0\6i\6s\6c\0\vinsert\vpreset\fmapping\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\26menu,menuone,noselect\16completeopt\6o\bvim\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: litee.nvim
time([[Config for litee.nvim]], true)
try_loadstring("\27LJ\2\n—\1\0\0\4\0\a\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0005\2\4\0005\3\5\0=\3\6\2B\0\2\1K\0\1\0\20icon_set_custom\1\0\1\bdir\tdir:\1\0\1\21use_web_devicons\1\19litee.filetree\nsetup\14litee.lib\frequire\0", "config", "litee.nvim")
time([[Config for litee.nvim]], false)
-- Config for: focus.nvim
time([[Config for focus.nvim]], true)
try_loadstring("\27LJ\2\n»\3\0\0\6\0\22\0.6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\16\0'\4\17\0005\5\18\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\19\0'\4\20\0005\5\21\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\29<CMD>FocusSplitRight<CR>\v<Tab>l\1\0\1\vsilent\2\26<CMD>FocusSplitUp<CR>\v<Tab>k\1\0\1\vsilent\2\28<CMD>FocusSplitDown<CR>\v<Tab>j\1\0\1\vsilent\2\28<CMD>FocusSplitLeft<CR>\v<Tab>h\1\0\1\vsilent\2\19<CMD>close<CR>\17<Tab><Space>\6n\20nvim_set_keymap\bapi\bvim\nsetup\nfocus\frequire\0", "config", "focus.nvim")
time([[Config for focus.nvim]], false)
-- Config for: nvim-ts-autotag
time([[Config for nvim-ts-autotag]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0", "config", "nvim-ts-autotag")
time([[Config for nvim-ts-autotag]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: flutter-tools.nvim
time([[Config for flutter-tools.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18flutter-tools\frequire\0", "config", "flutter-tools.nvim")
time([[Config for flutter-tools.nvim]], false)
-- Config for: telescope-file-browser.nvim
time([[Config for telescope-file-browser.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "telescope-file-browser.nvim")
time([[Config for telescope-file-browser.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
