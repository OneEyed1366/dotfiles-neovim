doom.indent = 2
doom.colorscheme = "doom-palenight"
doom.core.treesitter.settings.show_compiler_warning_message = false
doom.core.reloader.settings.reload_on_save = false

doom.features.linter.settings.format_on_save = true
doom.show_hidden = true
doom.hide_gitignore = false

doom.use_autocmd({
  {
    "BufRead,BufEnter",
    "*.astro",
    function()
      vim.cmd([[set filetype=astro]])
    end,
  },
})
