-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    
    require("plugins/themes")
    require("plugins/start-screen")
    require("plugins/file-explorer")
    require("plugins/coc")
    require("plugins/tree")
    require("plugins/telescope")
    require("plugins/colorizer")
    require("plugins/transparent")
    require("plugins/lualine")
    require("plugins/autotag")
    require("plugins/autopairs")
    require("plugins/indent-guides")
    require("plugins/wilder")
    require("plugins/comment")
    require("plugins/git-blame")
end)
