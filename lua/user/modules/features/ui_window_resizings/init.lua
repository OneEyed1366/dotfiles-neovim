local _module = {}
local _main_package = "main"

_module.packages = {
  [_main_package] = {
    "anuvyklack/windows.nvim"
  },
  ["middleclass"] = {
    "anuvyklack/middleclass"
  }
}

_module.configs = {
  [_main_package] = function ()
    require('windows').setup()
  end
}

return _module
