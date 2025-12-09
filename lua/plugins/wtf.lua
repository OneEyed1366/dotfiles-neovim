return {
	"piersolenski/wtf.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	opts = {},
	keys = {
		{
			mode = { "n" },
			"<Leader>ch",
			function()
				require("wtf").search()
			end,
			desc = "Search diagnostic with Google",
		},
		{
			"<leader>cH",
			mode = { "n", "x" },
			function()
				require("wtf").ai()
			end,
			desc = "Debug diagnostic with AI",
		},
	},
	setup = function()
		require("wtf").setup({
			additional_instructions =
			"As a professional software developer, I am seeking your assistance in addressing code-related issues and identifying potential problems. It is crucial that you consistently highlight any bad practices, risky solutions, and flawed code architecture. Furthermore, I expect you to provide guidance on improving the code using Behavioral and Design patterns whenever necessary. However, please refrain from offering additional code examples unless explicitly requested. Lastly, please conduct regular checks to ensure that my code adheres to the DRY (Don't Repeat Yourself) principles. Your response should be clear, structured, and detailed, aiming for the most precise, comprehensive, and high-quality assistance."
		})
	end
}
