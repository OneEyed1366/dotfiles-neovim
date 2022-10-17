local coq = {}
local _package_name = "coq_smth"
local _artifacts_package = "artifacts"
local _other_package = "thirdparty"

coq.packages = {
  [_package_name] = {
    "ms-jpq/coq_nvim",
    run = "python3 -m coq deps",
  },
  [_artifacts_package] = {
    "ms-jpq/coq.artifacts",
  },
  [_other_package] = {
    "ms-jpq/coq.thirdparty",
  }
}

coq.configs = {
  [_package_name] = function()
    local config = require("mason-lspconfig")

    vim.g.coq_settings = { auto_start = 'shut-up' }

    config.setup({
      automatic_installation = true,
    })

    config.setup_handlers {
      function(server_name) -- default handler (optional)
       local opts = require("coq").lsp_ensure_capabilities({
          -- on_attach = my_custom_on_attach,
        })

        require("lspconfig")[server_name].setup(opts)
      end,
    }
  end
}

return coq;
