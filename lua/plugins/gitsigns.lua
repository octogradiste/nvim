return {
	"lewis6991/gitsigns.nvim",
	opts = {
		on_attach = function(buffer)
			local gs = package.loaded.gitsigns

			local function map(mode, l, r, desc)
				vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
			end

			map("n", "<leader>hs", gs.stage_hunk, "Gitsigns stage hunk")
			map("n", "<leader>hr", gs.reset_hunk, "Gitsigns reset hunk")
			map("n", "<leader>bs", gs.stage_buffer, "Gitsigns stage buffer")
			map("n", "<leader>br", gs.reset_buffer, "Gitsigns reset buffer")
			map("n", "<leader>dt", gs.diffthis, "Gitsigns diff this")
			map("n", "<leader>tb", gs.toggle_current_line_blame, "Gitsigns toggle blame")
		end,
	},
}
