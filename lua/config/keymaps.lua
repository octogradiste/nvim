local g = vim.g

g.mapleader = " "
g.maplocalleader = "\\"

function map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.keymap.set(mode, lhs, rhs, options)
end

map("n", "<c-s>", ":w<cr>")
map("n", "<leader>qn", ":qa<cr>")
map("n", "<leader>ef", ":Neotree toggle<cr>")

vim.api.nvim_create_autocmd("LspAttach", {
	desc = "LSP actions",
	callback = function(event)
		local opts = { buffer = event.buf }

		map("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
		map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
		map("n", "<leader>re", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
		map({ "n", "x" }, "<leader>ft", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opts)
		map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
	end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
	desc = "Organize imports",
	buffer = buffer,
	callback = function()
		vim.lsp.buf.code_action({
			context = { only = { "source.organizeImports" } },
			apply = true,
		})
		vim.wait(100)
	end,
})
