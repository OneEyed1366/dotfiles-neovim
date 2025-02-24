return {
        "mhartington/formatter.nvim",
        config = function ()
                -- vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
                local formatter = require("formatter")
                local utils = require("formatter.util") 
                local defaults = require("formatter.defaults")

                formatter.setup(defaults)
        end
}
