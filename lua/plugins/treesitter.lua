return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	lazy = false,
	config = function()
		local opts = {
			highlight = { enable = true },
			indent = { enable = true },
		}

		require("nvim-treesitter.configs").setup(opts)
	end,
}
