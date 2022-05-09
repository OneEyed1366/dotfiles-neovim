-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    
    use {"powerman/vim-plugin-ruscmd"}

    require("plugins/themes")
    require("plugins/transparent")
    require("plugins/lualine")
    require("plugins/git-blame")
    require("plugins/start-screen")
    require("plugins/file-explorer")
    require("plugins/wilder")
    require("plugins/telescope")
    require("plugins/lsp-and-some-necessary-stuff")
end)
