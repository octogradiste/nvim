return {
	"neovim/nvim-lspconfig",
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		vim.lsp.config("*", { capabilities = capabilities })

		vim.lsp.config("lua_ls", {
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
					},
				},
			},
		})

		vim.lsp.enable({
			"clangd",
			"gopls",
			"jdtls",
			"lua_ls",
			"nixd",
			"openscad_lsp",
			"pyright",
			"ruff",
			"ts_ls",
		})
	end,
}
