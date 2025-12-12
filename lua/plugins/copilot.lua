return {
	"zbirenbaum/copilot.lua",
	keys = {
		{ "<leader>co", ":Copilot toggle<cr>", desc = "Toggle Copilot" },
	},
	opts = {
		suggestion = { enabled = false },
		panel = { enabled = false },
		filetypes = {
			gitcommit = true,
			markdown = true,
		},
	},
}
