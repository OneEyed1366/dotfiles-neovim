local flutter_tools = {}

flutter_tools.packages = {
  ["flutter-tools.nvim"] = {
    "akinsho/flutter-tools.nvim",
    after = "plenary.nvim"
  }
}

flutter_tools.configs = {}
flutter_tools.configs["flutter-tools.nvim"] = function()
    require("flutter-tools").setup {}
end

return flutter_tools
