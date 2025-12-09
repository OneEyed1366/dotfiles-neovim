return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    dependencies = {
        "nmac427/guess-indent.nvim"
    },
    config = function()
        local hooks = require "ibl.hooks"
        local highlight = {
            "RainbowRed",
            "RainbowYellow",
            "RainbowBlue",
            "RainbowOrange",
            "RainbowGreen",
            "RainbowViolet",
            "RainbowCyan",
        }

        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
            vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
            vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
            vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
            vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
            vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
            vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
        end)

        vim.opt.list = true
        vim.opt.listchars:append "space:⋅"
        vim.opt.listchars:append "eol:↴"

        require("guess-indent").setup({})
        require("ibl").setup {
            indent = { highlight = highlight }
        }
    end
}
