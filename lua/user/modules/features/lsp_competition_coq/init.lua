local coq = {}
local _package_name = "coq"

coq.packages = {
  [_package_name] = {
    {
      "ms-jpq/coq_nvim",
      run = "python3 -m coq deps",
      after = "mason",
      requires = {
        {"ms-jpq/coq.artifacts", after = "coq"},
        {"ms-jpq/coq.thirdparty", after = "coq"}
      }
    }
  }
}

coq.configs = {
  [_package_name] = function()
    doom.features.mason.configs[Global_lsp_auto_install_package] = function()
      local lspconfig = require('lspconfig')
      local lsp_installer = require("nvim-lsp-installer")
      local coq = require("coq")

      lsp_installer.setup {}

      vim.g.coq_settings = { auto_start = 'shut-up' }

      lspconfig.util.default_config = vim.tbl_extend(
        "force",
        lspconfig.util.default_config,
        {
            -- on_attach = on_attach
        }
      )

      for _, server in ipairs(lsp_installer.get_installed_servers()) do
        local opts = coq.lsp_ensure_capabilities({
          -- on_attach = my_custom_on_attach,
        })

        lspconfig[server.name].setup(opts)
      end
    end
  end
}

return coq;
