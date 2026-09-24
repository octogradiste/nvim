local g = vim.g

g.mapleader = " "
g.maplocalleader = "\\"

local default_opts = { noremap = true, silent = true }

vim.keymap.set("n", "<c-s>", ":w<cr>", default_opts)
vim.keymap.set("n", "<leader>qn", ":qa<cr>", default_opts)

vim.api.nvim_create_autocmd("LspAttach", {
	desc = "LSP actions",
	callback = function(event)
		local lsp_opts = { buffer = event.buf }

		vim.keymap.set("n", "K", vim.lsp.buf.hover, lsp_opts)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, lsp_opts)
		vim.keymap.set("n", "<leader>re", vim.lsp.buf.rename, lsp_opts)
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, lsp_opts)
	end,
})
