local module = {}
local _name = "lsp-lens"

module.packages = {
  [_name] = {
    "VidocqH/lsp-lens.nvim",
  },
}

module.configs = {
  [_name] = function()
    require("lsp-lens").setup({
      enable = true,
      include_declaration = false, -- Reference include declaration
      sections = { -- Enable / Disable specific request
        definition = false,
        references = true,
        implementation = true,
      },
      ignore_filetype = {
        "prisma",
      },
    })
  end,
}

return module
