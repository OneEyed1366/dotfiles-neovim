local neoformat = {}

neoformat.packages = {
  ["neoformat"] = {
    "sbdchd/neoformat"
  }
}

neoformat.configs = {
  ["neoformat"] = function()
    vim.cmd[[
      let g:neoformat_run_all_formatters = 1
      let g:neoformat_try_node_exe = 0
      let g:neoformat_enables_html = ['prettier']
      let g:neoformat_enabled_javascript = ['prettier', 'eslint']
      let g:neoformat_enabled_javascriptreact = ['prettier', 'eslint']
      let g:neoformat_enables_typescript = ['prettier', 'prettier-eslint', 'tslint', 'eslint_d']
      let g:neoformat_enabled_typescriptreact = ['prettier', 'eslint']
      let g:neoformat_enables_svelte = ['prettier-plugin-svelte', 'prettierd']
      let g:neoformat_enables_vue = ['prettierd', 'prettier']
      let g:neoformat_enables_graphql = ['prettier']
      let g:neoformat_enables_prisma = ['prettier']
      let g:neoformat_enables_css = ['prettier', 'stylelint']
      let g:neoformat_enables_sass = ['stylelint']
      let g:neoformat_enables_scss = ['prettier', 'stylelint', 'prettierd']
      let g:neoformat_enables_less = ['prettier', 'stylelint']
      let g:neoformat_enables_json = ['prettier']
      let g:neoformat_enables_markdown = ['prettier', 'remark']
      let g:neoformat_enables_yaml = ['prettier', 'prettierd']
      let g:neoformat_enables_xml = ['prettier', 'prettierd']

      let g:neoformat_enabled_python = ['autopep8', 'black']
      let g:neoformat_enables_dart = ['dart format', 'dartfmt']
      let g:neoformat_enables_htmldjango = ['djlint']
      let g:neoformat_enables_nginx = ['nginxbeautifier']

      augroup fmt
          autocmd!
          autocmd BufWritePre * undojoin | Neoformat
      augroup END
    ]]
  end
}

return neoformat
