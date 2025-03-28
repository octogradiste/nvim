return {
	"dfendr/clipboard-image.nvim",
	keys = { { "<leader>pi", "<cmd>PasteImg<CR>", desc = "Paste image from clipboard" } },
	opts = {
		default = {
			img_dir = "images",
			img_dir_txt = "images",
		},
	},
}
