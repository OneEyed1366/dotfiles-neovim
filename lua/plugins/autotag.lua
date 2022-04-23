require("packer").use {
    "windwp/nvim-ts-autotag",
    run = function()
        require("nvim-ts-autotag").setup()
    end
}
