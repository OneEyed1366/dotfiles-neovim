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
      let g:neoformat_try_node_exe = 1

      augroup fmt
          autocmd!
          autocmd BufWritePre * undojoin | Neoformat
      augroup END
    ]]
  end
}

return neoformat
