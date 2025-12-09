return {
    "nvim-focus/focus.nvim",
    lazy = true,
    config = function()
        require("focus").setup()
    end
}
