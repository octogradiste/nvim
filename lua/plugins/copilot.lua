return {
	"zbirenbaum/copilot.lua",
	opts = {
		suggestion = { enabled = false },
		panel = { enabled = false },
		filetypes = {
			gitcommit = true,
			markdown = true,
		},
		lsp_binary = "copilot-node-server",
	},
}
