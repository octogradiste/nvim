return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			dart = { "dart_format" },
			json = { "jq" },
			lua = { "stylua" },
			nix = { "nixfmt" },
			python = { "ruff_format" },
			typescript = { "prettierd" },
		},
		default_format_opts = {
			lsp_format = "fallback",
		},
		format_on_save = {
			lsp_format = "fallback",
			timeout_ms = 500,
		},
	},
}
