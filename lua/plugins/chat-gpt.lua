return {
        "jackMort/ChatGPT.nvim",
        event = "VeryLazy",
        config = function()
                require("chatgpt").setup({
                        edit_with_instructions = {
                                keymaps = {
                                        close = { "q" },
                                        accept = { "<cr>" },
                                        toggle_diff = { "<leader>ai" },
                                        toggle_settings = { "<leader>a0" },
                                        use_output_as_input = { "<leader>ak" },
                                }
                        },
                        chat = {
                                keymaps = {
                                        close = { "q" },
                                        yank_last = { "y" },
                                        yank_last_code = { "<leader>cy" },
                                        next_message = { "<leader>al" },
                                        prev_message = { "<leader>ah" },
                                        new_session = { "<leader>an" },
                                        select_session = { "<cr>" },
                                        rename_session = { "<leader>ar" },
                                        delete_session = { "<leader>ad" },
                                        draft_message = { "<leader>a<cr>" },
                                        edit_message = { "<leader>ae" },
                                        delete_message = {"<leader>ad" },
                                        toggle_settings = { "<leader>a0" },
                                        toggle_message_role = { "<leader>a1" },
                                        toggle_system_role_open = { "<leader>a2" },
                                        stop_generating = { "<leader>x" },
                                }
                        }
                })
        end,
        dependencies = {
                "MunifTanjim/nui.nvim",
                "nvim-lua/plenary.nvim",
                "nvim-telescope/telescope.nvim"
      },
      keys = {
              { "<leader>oa", "<CMD>ChatGPT<CR>", "ChatGPT: open" },
      }
}
