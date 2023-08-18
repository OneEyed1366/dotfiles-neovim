local _module = {}

_module.packages = {
  ["ddc"] = {
    "Shougo/ddc.vim",
    requires = {
      "vim-denops/denops.vim",
      "Shougo/ddc-ui-native",
      "Shougo/ddc-source-around",
      "Shougo/ddc-matcher_head",
      "Shougo/ddc-sorter_rank",
    },
  },
}

_module.configs = {
  ["ddc"] = function()
    -- Customize global settings
    -- You must set the default ui.
    -- Note: native ui
    -- https://github.com/Shougo/ddc-ui-native
    vim.call("ddc#custom#patch_global", "ui", "native")

    -- Use around source.
    -- https://github.com/Shougo/ddc-source-around
    vim.call("ddc#custom#patch_global", "sources", { "around" })

    -- Use matcher_head and sorter_rank.
    -- https://github.com/Shougo/ddc-matcher_head
    -- https://github.com/Shougo/ddc-sorter_rank
    vim.call("ddc#custom#patch_global", "sourceOptions", {
      _ = {
        matchers = { "matcher_head" },
        sorters = { "sorter_rank" },
      },
    })

    -- Change source options
    vim.call("ddc#custom#patch_global", "sourceOptions", {
      around = { mark = "A" },
    })
    vim.call("ddc#custom#patch_global", "sourceParams", {
      around = { maxSize = 500 },
    })

    -- Customize settings on a filetype
    vim.call("ddc#custom#patch_filetype", { "c", "cpp" }, "sources", { "around", "clangd" })
    vim.call("ddc#custom#patch_filetype", { "c", "cpp" }, "sourceOptions", {
      clangd = { mark = "C" },
    })
    vim.call("ddc#custom#patch_filetype", "markdown", "sourceParams", {
      around = { maxSize = 100 },
    })

    -- -- Mappings
    -- -- <TAB>: completion.
    -- vim.api.nvim_set_keymap("i", "<TAB>", "<C-n>", { expr = true, silent = true, noremap = true })
    -- vim.api.nvim_set_keymap("i", "<S-TAB>", "<C-p>", { expr = true, silent = true, noremap = true })

    -- Use ddc.
    vim.call("ddc#enable")
  end,
}

_module.binds = {
  {
    mode = "i",
    {
      { "<TAB>", "<C-n>", { expr = true, silent = true, noremap = true } },
      { "<S-TAB>", "<C-p>", { expr = true, silent = true, noremap = true } },
    },
  },
}

return _module
