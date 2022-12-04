local _module = {}
local _sqls_name = "sqls"

_module.packages = {
  [_sqls_name] = {
    "nanotee/sqls.nvim"
  }
}

_module.configs = {
  [_sqls_name] = function()
    require('lspconfig').sqls.setup{
      on_attach = function(client, bufnr)
          require('sqls').on_attach(client, bufnr)
      end
    }
  end
}

return _module
