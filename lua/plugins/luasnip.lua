return {
	"L3MON4D3/LuaSnip",
	lazy = false,
	dependencies = {
		"rafamadriz/friendly-snippets",
		"Nash0x7E2/awesome-flutter-snippets",
	},
	config = function()
		require("luasnip.loaders.from_vscode").lazy_load()
	end,
}
