return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	lazy = false,
	config = function()
		local opts = {
			highlight = { enable = true },
			indent = { enable = true },
			ensure_installed = {
				"asm",
				"bash",
				"c",
				"cmake",
				"cpp",
				"css",
				"csv",
				"dart",
				"diff",
				"dockerfile",
				"gdscript",
				"go",
				"html",
				"java",
				"javascript",
				"json",
				"kotlin",
				"lua",
				"make",
				"nix",
				"python",
				"rust",
				"tsx",
				"typescript",
				"yaml",
			},
		}

		require("nvim-treesitter.configs").setup(opts)
	end,
}
