local transparent = {}

transparent.packages = {
  ["transparent"] = {
    "xiyaowong/nvim-transparent",
  }
}

transparent.configs = {}
transparent.configs["transparent"] = function()
  require("transparent").setup({
    enable = true,
    extra_groups = {

    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",
    },
        exclude = {}, -- table: groups you don't want to clear
    })
end

return transparent
