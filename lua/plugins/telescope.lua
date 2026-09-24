return {
	"nvim-telescope/telescope.nvim",
	tag = "v0.2.2",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
		vim.keymap.set("n", "<leader>lg", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
		vim.keymap.set("n", "<leader>gi", builtin.lsp_implementations, { desc = "Telescope lsp implementations" })
		vim.keymap.set("n", "<leader>gr", builtin.lsp_references, { desc = "Telescope lsp references" })
	end,
}
