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
  ["flutter-tools.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18flutter-tools\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/flutter-tools.nvim",
    url = "https://github.com/akinsho/flutter-tools.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nW\0\4\n\1\4\0\14\14\0\3\0X\4\1€4\3\0\0-\4\0\0=\4\0\0036\4\1\0009\4\2\0049\4\3\4\18\6\0\0\18\a\1\0\18\b\2\0\18\t\3\0B\4\5\1K\0\1\0\0À\bset\vkeymap\bvim\vbuffer#\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0\0\14next_hunkg\1\0\3\1\a\0\0156\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\2€'\0\3\0002\0\a€6\0\0\0009\0\4\0003\2\5\0B\0\2\1'\0\6\0002\0\0€L\0\2\0L\0\2\0\1À\r<Ignore>\0\rschedule\a`[\tdiff\awo\bvim#\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0\0\14prev_hunkg\1\0\3\1\a\0\0156\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\2€'\0\3\0002\0\a€6\0\0\0009\0\4\0003\2\5\0B\0\2\1'\0\6\0002\0\0€L\0\2\0L\0\2\0\1À\r<Ignore>\0\rschedule\a`]\tdiff\awo\bvim(\0\0\3\1\2\0\5-\0\0\0009\0\0\0'\2\1\0B\0\2\1K\0\1\0\1À\6~\rdiffthisâ\3\1\1\t\0\28\0:6\1\0\0'\3\1\0B\1\2\0023\2\2\0\18\3\2\0'\5\3\0'\6\4\0003\a\5\0005\b\6\0B\3\5\1\18\3\2\0'\5\3\0'\6\a\0003\a\b\0005\b\t\0B\3\5\1\18\3\2\0'\5\3\0'\6\n\0009\a\v\1B\3\4\1\18\3\2\0'\5\3\0'\6\f\0009\a\r\1B\3\4\1\18\3\2\0'\5\3\0'\6\14\0003\a\15\0B\3\4\1\18\3\2\0'\5\3\0'\6\16\0009\a\17\1B\3\4\1\18\3\2\0005\5\18\0'\6\19\0'\a\20\0B\3\4\1\18\3\2\0005\5\21\0'\6\22\0'\a\23\0B\3\4\1\18\3\2\0'\5\3\0'\6\24\0'\a\25\0B\3\4\1\18\3\2\0'\5\3\0'\6\26\0'\a\27\0B\3\4\0012\0\0€K\0\1\0 <CMD>Gitsigns next_hunk<CR>\a`x <CMD>Gitsigns prev_hunk<CR>\a`z&<CMD>Gitsigns undo_stage_hunk<CR>\aHj\1\3\0\0\6n\6v!<CMD>Gitsigns stage_hunk<CR>\aHh\1\3\0\0\6n\6v\19toggle_deleted\aHd\0\aHD\rdiffthis\aHJ\17preview_hunk\aHH\1\0\1\texpr\2\0\a`]\1\0\1\texpr\2\0\a`[\6n\0\rgitsigns\frequired\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0003\3\4\0=\3\5\2B\0\2\1K\0\1\0\14on_attach\0\1\0\1\23current_line_blame\2\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n†\5\0\0\5\0\31\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\t\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0034\4\0\0=\4\b\3=\3\n\0025\3\f\0005\4\v\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\3=\3\24\0025\3\25\0004\4\0\0=\4\r\0034\4\0\0=\4\15\0035\4\26\0=\4\17\0035\4\27\0=\4\19\0034\4\0\0=\4\21\0034\4\0\0=\4\23\3=\3\28\0024\3\0\0=\3\29\0024\3\0\0=\3\30\2B\0\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\nright\bî‚²\tleft\bî‚°\25component_separators\1\0\2\nright\bî‚³\tleft\bî‚±\1\0\4\18icons_enabled\2\25always_divide_middle\2\17globalstatus\1\ntheme\fonedark\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mini.nvim"] = {
    config = { "\27LJ\2\nê\1\0\0\3\0\b\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\4\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\5\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\6\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\a\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\20mini.cursorword\20mini.trailspace\15mini.pairs\21mini.indentscope\17mini.comment\nsetup\20mini.completion\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/mini.nvim",
    url = "https://github.com/echasnovski/mini.nvim"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\2\n%\0\1\6\0\1\0\0064\1\0\0\18\4\0\0009\2\0\0\18\5\1\0B\2\3\1K\0\1\0\nsetupO\1\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0003\2\3\0B\0\2\1K\0\1\0\0\20on_server_ready\23nvim-lsp-installer\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nc\0\2\a\0\5\0\b6\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\1K\0\1\0\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvimˆ\6\1\0\14\0!\0G6\0\0\0009\0\1\0009\0\2\0005\1\3\0005\2\4\0006\3\0\0009\3\5\0039\3\6\0039\3\a\3B\3\1\0023\4\b\0\18\5\0\0'\a\t\0'\b\n\0'\t\v\0\18\n\1\0B\5\5\1\18\5\0\0'\a\t\0'\b\f\0'\t\r\0\18\n\1\0B\5\5\1\18\5\0\0'\a\t\0'\b\14\0'\t\15\0\18\n\1\0B\5\5\1\18\5\0\0'\a\t\0'\b\16\0'\t\17\0\18\n\1\0B\5\5\1\18\5\0\0'\a\t\0'\b\18\0'\t\19\0\18\n\1\0B\5\5\1\18\5\0\0'\a\t\0'\b\20\0'\t\21\0\18\n\1\0B\5\5\1\18\5\0\0'\a\t\0'\b\22\0'\t\23\0\18\n\1\0B\5\5\0016\5\24\0\18\a\2\0B\5\2\4H\b\v€6\n\25\0'\f\26\0B\n\2\0028\n\t\n9\n\27\n5\f\28\0=\4\29\f=\3\30\f5\r\31\0=\r \fB\n\2\1F\b\3\3R\bóK\0\1\0\nflags\1\0\1\26debounce_text_changes\3–\1\17capabilities\14on_attach\1\0\0\nsetup\14lspconfig\frequire\npairs/<cmd>lua vim.lsp.buf.type_definition()<CR>\a`s*<cmd>lua vim.lsp.buf.definition()<CR>\a`a&<cmd>lua vim.lsp.buf.rename()<CR>\a`r,<cmd>lua vim.diagnostic.goto_next()<CR>\a`w,<cmd>lua vim.diagnostic.goto_prev()<CR>\a`q+<cmd>lua vim.lsp.buf.code_action()<CR>\t<CR>%<cmd>lua vim.lsp.buf.hover()<CR>\6K\6n\0\29make_client_capabilities\rprotocol\blsp\1\3\0\0\fpyright\rtsserver\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\bvim\0" },
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
    config = { "\27LJ\2\n¦\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\vindent\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
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
    config = { "\27LJ\2\nÛ\3\0\0\t\0)\0?6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0009\0\4\0006\1\0\0'\3\1\0B\1\2\0029\1\5\0015\3'\0005\4&\0005\5$\0005\6\23\0005\a\a\0009\b\6\0=\b\b\a9\b\t\0=\b\n\a9\b\v\0=\b\f\a9\b\r\0=\b\14\a9\b\15\0=\b\16\a9\b\17\0=\b\18\a9\b\19\0=\b\20\a9\b\21\0=\b\22\a=\a\24\0065\a\25\0009\b\6\0=\b\26\a9\b\t\0=\b\27\a9\b\v\0=\b\28\a9\b\r\0=\b\29\a9\b\15\0=\b\30\a9\b\17\0=\b\31\a9\b\19\0=\b \a9\b\21\0=\b!\a6\b\"\0>\b\1\a=\a#\6=\6%\5=\5\3\4=\4\2\3B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1(\1'\3\3\0B\1\2\1K\0\1\0\19load_extension\1\0\0\1\0\0\rmappings\1\0\0\6n\bngs\6I\6O\6D\6C\6V\6R\aNO\6N\1\0\0\6i\1\0\0\a`i\18toggle_hidden\a`o\topen\a`d\vremove\a`c\tcopy\a`v\tmove\a`r\vrename\a`p\23create_from_prompt\a`n\1\0\0\vcreate\nsetup\factions\17file_browser\15extensions\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n¢\3\0\0\b\0\17\0)6\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\a\0'\6\b\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\t\0'\6\n\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\v\0'\6\f\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\15\0'\6\16\0\18\a\1\0B\2\5\1K\0\1\0!<CMD>Telescope git_files<CR>\a8=!<CMD>Telescope git_stash<CR>\a9=#<CMD>Telescope git_commits<CR>\a0=$<CMD>Telescope git_branches<CR>\a-=\"<CMD>Telescope git_status<CR>\a==$<CMD>Telescope file_browser<CR>\a``\6n\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/andrejprokopenko/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
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
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nc\0\2\a\0\5\0\b6\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\1K\0\1\0\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvimˆ\6\1\0\14\0!\0G6\0\0\0009\0\1\0009\0\2\0005\1\3\0005\2\4\0006\3\0\0009\3\5\0039\3\6\0039\3\a\3B\3\1\0023\4\b\0\18\5\0\0'\a\t\0'\b\n\0'\t\v\0\18\n\1\0B\5\5\1\18\5\0\0'\a\t\0'\b\f\0'\t\r\0\18\n\1\0B\5\5\1\18\5\0\0'\a\t\0'\b\14\0'\t\15\0\18\n\1\0B\5\5\1\18\5\0\0'\a\t\0'\b\16\0'\t\17\0\18\n\1\0B\5\5\1\18\5\0\0'\a\t\0'\b\18\0'\t\19\0\18\n\1\0B\5\5\1\18\5\0\0'\a\t\0'\b\20\0'\t\21\0\18\n\1\0B\5\5\1\18\5\0\0'\a\t\0'\b\22\0'\t\23\0\18\n\1\0B\5\5\0016\5\24\0\18\a\2\0B\5\2\4H\b\v€6\n\25\0'\f\26\0B\n\2\0028\n\t\n9\n\27\n5\f\28\0=\4\29\f=\3\30\f5\r\31\0=\r \fB\n\2\1F\b\3\3R\bóK\0\1\0\nflags\1\0\1\26debounce_text_changes\3–\1\17capabilities\14on_attach\1\0\0\nsetup\14lspconfig\frequire\npairs/<cmd>lua vim.lsp.buf.type_definition()<CR>\a`s*<cmd>lua vim.lsp.buf.definition()<CR>\a`a&<cmd>lua vim.lsp.buf.rename()<CR>\a`r,<cmd>lua vim.diagnostic.goto_next()<CR>\a`w,<cmd>lua vim.diagnostic.goto_prev()<CR>\a`q+<cmd>lua vim.lsp.buf.code_action()<CR>\t<CR>%<cmd>lua vim.lsp.buf.hover()<CR>\6K\6n\0\29make_client_capabilities\rprotocol\blsp\1\3\0\0\fpyright\rtsserver\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n†\5\0\0\5\0\31\0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\t\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0034\4\0\0=\4\b\3=\3\n\0025\3\f\0005\4\v\0=\4\r\0035\4\14\0=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\3=\3\24\0025\3\25\0004\4\0\0=\4\r\0034\4\0\0=\4\15\0035\4\26\0=\4\17\0035\4\27\0=\4\19\0034\4\0\0=\4\21\0034\4\0\0=\4\23\3=\3\28\0024\3\0\0=\3\29\0024\3\0\0=\3\30\2B\0\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\nright\bî‚²\tleft\bî‚°\25component_separators\1\0\2\nright\bî‚³\tleft\bî‚±\1\0\4\18icons_enabled\2\25always_divide_middle\2\17globalstatus\1\ntheme\fonedark\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-transparent
time([[Config for nvim-transparent]], true)
try_loadstring("\27LJ\2\nñ\1\0\0\4\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0024\3\0\0=\3\6\2B\0\2\1K\0\1\0\fexclude\17extra_groups\1\a\0\0\23BufferLineTabClose\29BufferlineBufferSelected\19BufferLineFill\25BufferLineBackground\24BufferLineSeparator BufferLineIndicatorSelected\1\0\1\venable\2\nsetup\16transparent\frequire\0", "config", "nvim-transparent")
time([[Config for nvim-transparent]], false)
-- Config for: mini.nvim
time([[Config for mini.nvim]], true)
try_loadstring("\27LJ\2\nê\1\0\0\3\0\b\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\4\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\5\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\6\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\a\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\20mini.cursorword\20mini.trailspace\15mini.pairs\21mini.indentscope\17mini.comment\nsetup\20mini.completion\frequire\0", "config", "mini.nvim")
time([[Config for mini.nvim]], false)
-- Config for: wilder.nvim
time([[Config for wilder.nvim]], true)
try_loadstring("\27LJ\2\nç\1\0\0\n\0\r\0\0196\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0019\1\6\0'\3\a\0009\4\b\0009\6\t\0005\b\v\0005\t\n\0=\t\f\bB\6\2\0A\4\0\0A\1\1\1K\0\1\0\15highlights\1\0\1\vborder\frounded\1\0\1\vborder\vNormal\27popupmenu_border_theme\23popupmenu_renderer\rrenderer\15set_option\nmodes\1\0\0\1\4\0\0\6:\6/\6?\nsetup\vwilder\frequire\0", "config", "wilder.nvim")
time([[Config for wilder.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n¦\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\vindent\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: flutter-tools.nvim
time([[Config for flutter-tools.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18flutter-tools\frequire\0", "config", "flutter-tools.nvim")
time([[Config for flutter-tools.nvim]], false)
-- Config for: nvim-ts-autotag
time([[Config for nvim-ts-autotag]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0", "config", "nvim-ts-autotag")
time([[Config for nvim-ts-autotag]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n¢\3\0\0\b\0\17\0)6\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\a\0'\6\b\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\t\0'\6\n\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\v\0'\6\f\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\15\0'\6\16\0\18\a\1\0B\2\5\1K\0\1\0!<CMD>Telescope git_files<CR>\a8=!<CMD>Telescope git_stash<CR>\a9=#<CMD>Telescope git_commits<CR>\a0=$<CMD>Telescope git_branches<CR>\a-=\"<CMD>Telescope git_status<CR>\a==$<CMD>Telescope file_browser<CR>\a``\6n\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\bvim\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\n%\0\1\6\0\1\0\0064\1\0\0\18\4\0\0009\2\0\0\18\5\1\0B\2\3\1K\0\1\0\nsetupO\1\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0003\2\3\0B\0\2\1K\0\1\0\0\20on_server_ready\23nvim-lsp-installer\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nW\0\4\n\1\4\0\14\14\0\3\0X\4\1€4\3\0\0-\4\0\0=\4\0\0036\4\1\0009\4\2\0049\4\3\4\18\6\0\0\18\a\1\0\18\b\2\0\18\t\3\0B\4\5\1K\0\1\0\0À\bset\vkeymap\bvim\vbuffer#\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0\0\14next_hunkg\1\0\3\1\a\0\0156\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\2€'\0\3\0002\0\a€6\0\0\0009\0\4\0003\2\5\0B\0\2\1'\0\6\0002\0\0€L\0\2\0L\0\2\0\1À\r<Ignore>\0\rschedule\a`[\tdiff\awo\bvim#\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0\0\14prev_hunkg\1\0\3\1\a\0\0156\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\2€'\0\3\0002\0\a€6\0\0\0009\0\4\0003\2\5\0B\0\2\1'\0\6\0002\0\0€L\0\2\0L\0\2\0\1À\r<Ignore>\0\rschedule\a`]\tdiff\awo\bvim(\0\0\3\1\2\0\5-\0\0\0009\0\0\0'\2\1\0B\0\2\1K\0\1\0\1À\6~\rdiffthisâ\3\1\1\t\0\28\0:6\1\0\0'\3\1\0B\1\2\0023\2\2\0\18\3\2\0'\5\3\0'\6\4\0003\a\5\0005\b\6\0B\3\5\1\18\3\2\0'\5\3\0'\6\a\0003\a\b\0005\b\t\0B\3\5\1\18\3\2\0'\5\3\0'\6\n\0009\a\v\1B\3\4\1\18\3\2\0'\5\3\0'\6\f\0009\a\r\1B\3\4\1\18\3\2\0'\5\3\0'\6\14\0003\a\15\0B\3\4\1\18\3\2\0'\5\3\0'\6\16\0009\a\17\1B\3\4\1\18\3\2\0005\5\18\0'\6\19\0'\a\20\0B\3\4\1\18\3\2\0005\5\21\0'\6\22\0'\a\23\0B\3\4\1\18\3\2\0'\5\3\0'\6\24\0'\a\25\0B\3\4\1\18\3\2\0'\5\3\0'\6\26\0'\a\27\0B\3\4\0012\0\0€K\0\1\0 <CMD>Gitsigns next_hunk<CR>\a`x <CMD>Gitsigns prev_hunk<CR>\a`z&<CMD>Gitsigns undo_stage_hunk<CR>\aHj\1\3\0\0\6n\6v!<CMD>Gitsigns stage_hunk<CR>\aHh\1\3\0\0\6n\6v\19toggle_deleted\aHd\0\aHD\rdiffthis\aHJ\17preview_hunk\aHH\1\0\1\texpr\2\0\a`]\1\0\1\texpr\2\0\a`[\6n\0\rgitsigns\frequired\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0003\3\4\0=\3\5\2B\0\2\1K\0\1\0\14on_attach\0\1\0\1\23current_line_blame\2\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: telescope-file-browser.nvim
time([[Config for telescope-file-browser.nvim]], true)
try_loadstring("\27LJ\2\nÛ\3\0\0\t\0)\0?6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0009\0\4\0006\1\0\0'\3\1\0B\1\2\0029\1\5\0015\3'\0005\4&\0005\5$\0005\6\23\0005\a\a\0009\b\6\0=\b\b\a9\b\t\0=\b\n\a9\b\v\0=\b\f\a9\b\r\0=\b\14\a9\b\15\0=\b\16\a9\b\17\0=\b\18\a9\b\19\0=\b\20\a9\b\21\0=\b\22\a=\a\24\0065\a\25\0009\b\6\0=\b\26\a9\b\t\0=\b\27\a9\b\v\0=\b\28\a9\b\r\0=\b\29\a9\b\15\0=\b\30\a9\b\17\0=\b\31\a9\b\19\0=\b \a9\b\21\0=\b!\a6\b\"\0>\b\1\a=\a#\6=\6%\5=\5\3\4=\4\2\3B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1(\1'\3\3\0B\1\2\1K\0\1\0\19load_extension\1\0\0\1\0\0\rmappings\1\0\0\6n\bngs\6I\6O\6D\6C\6V\6R\aNO\6N\1\0\0\6i\1\0\0\a`i\18toggle_hidden\a`o\topen\a`d\vremove\a`c\tcopy\a`v\tmove\a`r\vrename\a`p\23create_from_prompt\a`n\1\0\0\vcreate\nsetup\factions\17file_browser\15extensions\14telescope\frequire\0", "config", "telescope-file-browser.nvim")
time([[Config for telescope-file-browser.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
