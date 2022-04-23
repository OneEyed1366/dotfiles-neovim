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
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["coc.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nw\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\31show_current_context_start\2\25show_current_context\2\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lir.nvim"] = {
    config = { "\27LJ\2\nG\0\0\3\1\4\0\b-\0\0\0009\0\0\0B\0\1\0016\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\1À\14normal! j\bcmd\bvim\16toggle_markü\1\0\0\a\0\f\0\0256\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0'\4\4\0'\5\5\0005\6\6\0B\0\6\0016\0\0\0009\0\1\0009\0\a\0004\2\3\0005\3\v\0006\4\0\0009\4\b\0049\4\t\4'\6\n\0B\4\2\2>\4\1\3>\3\1\2+\3\1\0004\4\0\0B\0\4\1K\0\1\0\1\3\0\0\0\vNormal\b%:p\vexpand\afn\14nvim_echo\1\0\2\vsilent\2\fnoremap\2=:<C-u>lua require\"lir.mark.actions\".toggle_mark(\"v\")<CR>\6J\6x\24nvim_buf_set_keymap\bapi\bvimÝ\4\1\0\b\0001\0;6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0029\3\5\0035\5\6\0005\6\b\0009\a\a\0=\a\t\0069\a\n\0=\a\v\0069\a\f\0=\a\r\0069\a\14\0=\a\15\0069\a\16\0=\a\17\0069\a\18\0=\a\19\0069\a\20\0=\a\21\0069\a\22\0=\a\23\0069\a\24\0=\a\25\0069\a\26\0=\a\27\0069\a\28\0=\a\29\0069\a\30\0=\a\31\0069\a \0=\a!\0063\a\"\0=\a#\0069\a$\2=\a%\0069\a&\2=\a'\0069\a(\2=\a)\6=\6*\0055\6+\0005\a,\0=\a-\6=\6.\0053\6/\0=\0060\5B\3\2\0012\0\0€K\0\1\0\fon_init\0\nfloat\18curdir_window\1\0\2\22highlight_dirname\1\venable\1\1\0\1\rwinblend\3\0\rmappings\6v\npaste\6x\bcut\6c\tcopy\6J\0\6d\vdelete\6I\23toggle_show_hidden\6Y\14yank_path\6@\acd\6r\vrename\6n\fnewfile\6N\nmkdir\6q\tquit\6h\aup\n<C-t>\ftabedit\n<C-v>\vvsplit\n<C-s>\nsplit\6l\1\0\0\tedit\1\0\3\16hide_cursor\2\20devicons_enable\2\22show_hidden_files\1\nsetup\blir\26lir.clipboard.actions\21lir.mark.actions\16lir.actions\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/lir.nvim",
    url = "https://github.com/tamago324/lir.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n†\5\0\0\5\0\31\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\t\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0034\4\0\0=\4\b\3=\3\n\0025\3\f\0005\4\v\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\3=\3\24\0025\3\25\0004\4\0\0=\4\r\0034\4\0\0=\4\15\0035\4\26\0=\4\17\0035\4\27\0=\4\19\0034\4\0\0=\4\21\0034\4\0\0=\4\23\3=\3\28\0024\3\0\0=\3\29\0024\3\0\0=\3\30\2B\0\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\nright\bî‚²\tleft\bî‚°\25component_separators\1\0\2\nright\bî‚³\tleft\bî‚±\1\0\4\18icons_enabled\2\25always_divide_middle\2\17globalstatus\1\ntheme\fonedark\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
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
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
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
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["wilder.nvim"] = {
    config = { "\27LJ\2\nç\1\0\0\n\0\r\0\0196\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0019\1\6\0'\3\a\0009\4\b\0009\6\t\0005\b\v\0005\t\n\0=\t\f\bB\6\2\0A\4\0\0A\1\1\1K\0\1\0\15highlights\1\0\1\vborder\frounded\1\0\1\vborder\vNormal\27popupmenu_border_theme\23popupmenu_renderer\rrenderer\15set_option\nmodes\1\0\0\1\4\0\0\6:\6/\6?\nsetup\vwilder\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nw\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\31show_current_context_start\2\25show_current_context\2\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-transparent
time([[Config for nvim-transparent]], true)
try_loadstring("\27LJ\2\nñ\1\0\0\4\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0024\3\0\0=\3\6\2B\0\2\1K\0\1\0\fexclude\17extra_groups\1\a\0\0\23BufferLineTabClose\29BufferlineBufferSelected\19BufferLineFill\25BufferLineBackground\24BufferLineSeparator BufferLineIndicatorSelected\1\0\1\venable\2\nsetup\16transparent\frequire\0", "config", "nvim-transparent")
time([[Config for nvim-transparent]], false)
-- Config for: lir.nvim
time([[Config for lir.nvim]], true)
try_loadstring("\27LJ\2\nG\0\0\3\1\4\0\b-\0\0\0009\0\0\0B\0\1\0016\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\1À\14normal! j\bcmd\bvim\16toggle_markü\1\0\0\a\0\f\0\0256\0\0\0009\0\1\0009\0\2\0)\2\0\0'\3\3\0'\4\4\0'\5\5\0005\6\6\0B\0\6\0016\0\0\0009\0\1\0009\0\a\0004\2\3\0005\3\v\0006\4\0\0009\4\b\0049\4\t\4'\6\n\0B\4\2\2>\4\1\3>\3\1\2+\3\1\0004\4\0\0B\0\4\1K\0\1\0\1\3\0\0\0\vNormal\b%:p\vexpand\afn\14nvim_echo\1\0\2\vsilent\2\fnoremap\2=:<C-u>lua require\"lir.mark.actions\".toggle_mark(\"v\")<CR>\6J\6x\24nvim_buf_set_keymap\bapi\bvimÝ\4\1\0\b\0001\0;6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0029\3\5\0035\5\6\0005\6\b\0009\a\a\0=\a\t\0069\a\n\0=\a\v\0069\a\f\0=\a\r\0069\a\14\0=\a\15\0069\a\16\0=\a\17\0069\a\18\0=\a\19\0069\a\20\0=\a\21\0069\a\22\0=\a\23\0069\a\24\0=\a\25\0069\a\26\0=\a\27\0069\a\28\0=\a\29\0069\a\30\0=\a\31\0069\a \0=\a!\0063\a\"\0=\a#\0069\a$\2=\a%\0069\a&\2=\a'\0069\a(\2=\a)\6=\6*\0055\6+\0005\a,\0=\a-\6=\6.\0053\6/\0=\0060\5B\3\2\0012\0\0€K\0\1\0\fon_init\0\nfloat\18curdir_window\1\0\2\22highlight_dirname\1\venable\1\1\0\1\rwinblend\3\0\rmappings\6v\npaste\6x\bcut\6c\tcopy\6J\0\6d\vdelete\6I\23toggle_show_hidden\6Y\14yank_path\6@\acd\6r\vrename\6n\fnewfile\6N\nmkdir\6q\tquit\6h\aup\n<C-t>\ftabedit\n<C-v>\vvsplit\n<C-s>\nsplit\6l\1\0\0\tedit\1\0\3\16hide_cursor\2\20devicons_enable\2\22show_hidden_files\1\nsetup\blir\26lir.clipboard.actions\21lir.mark.actions\16lir.actions\frequire\0", "config", "lir.nvim")
time([[Config for lir.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n¦\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\vindent\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: wilder.nvim
time([[Config for wilder.nvim]], true)
try_loadstring("\27LJ\2\nç\1\0\0\n\0\r\0\0196\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0019\1\6\0'\3\a\0009\4\b\0009\6\t\0005\b\v\0005\t\n\0=\t\f\bB\6\2\0A\4\0\0A\1\1\1K\0\1\0\15highlights\1\0\1\vborder\frounded\1\0\1\vborder\vNormal\27popupmenu_border_theme\23popupmenu_renderer\rrenderer\15set_option\nmodes\1\0\0\1\4\0\0\6:\6/\6?\nsetup\vwilder\frequire\0", "config", "wilder.nvim")
time([[Config for wilder.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n†\5\0\0\5\0\31\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\t\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0034\4\0\0=\4\b\3=\3\n\0025\3\f\0005\4\v\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\3=\3\24\0025\3\25\0004\4\0\0=\4\r\0034\4\0\0=\4\15\0035\4\26\0=\4\17\0035\4\27\0=\4\19\0034\4\0\0=\4\21\0034\4\0\0=\4\23\3=\3\28\0024\3\0\0=\3\29\0024\3\0\0=\3\30\2B\0\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\nright\bî‚²\tleft\bî‚°\25component_separators\1\0\2\nright\bî‚³\tleft\bî‚±\1\0\4\18icons_enabled\2\25always_divide_middle\2\17globalstatus\1\ntheme\fonedark\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: coc.nvim
time([[Config for coc.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "coc.nvim")
time([[Config for coc.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
