return {
	"neovim/nvim-lspconfig",
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local lspconfig = require("lspconfig")

		lspconfig.lua_ls.setup({ capabilities = capabilities })
		lspconfig.nixd.setup({ capabilities = capabilities })
		lspconfig.openscad_lsp.setup({ capabilities = capabilities })
		lspconfig.pyright.setup({ capabilities = capabilities })
		lspconfig.ruff.setup({ capabilities = capabilities })
		lspconfig.ts_ls.setup({ capabilities = capabilities })
	end,
}
