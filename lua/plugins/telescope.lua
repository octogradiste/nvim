return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	keys = {
		{ "<leader>ff", ":Telescope find_files<cr>", desc = "Telescope find files" },
		{ "<leader>lg", ":Telescope live_grep<cr>", desc = "Telescope live grep" },
		{ "<leader>fb", ":Telescope buffers<cr>", desc = "Telescope buffers" },
		{ "<leader>gi", ":Telescope lsp_implementations<cr>", desc = "Telescope lsp implementations" },
		{ "<leader>gr", ":Telescope lsp_references<cr>", desc = "Telescope lsp references" },
	},
}
