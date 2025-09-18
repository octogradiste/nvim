return {
	"lewis6991/gitsigns.nvim",
	opts = {
		on_attach = function(buffer)
			local gs = package.loaded.gitsigns

			local function map(mode, l, r, desc)
				vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
			end

			map("n", "<leader>gsh", gs.stage_hunk, "Gitsigns stage hunk")
			map("n", "<leader>grh", gs.reset_hunk, "Gitsigns reset hunk")
			map("n", "<leader>gsb", gs.stage_buffer, "Gitsigns stage buffer")
			map("n", "<leader>grb", gs.reset_buffer, "Gitsigns reset buffer")
			map("n", "<leader>gdt", gs.diffthis, "Gitsigns diff this")
			map("n", "<leader>gtb", gs.toggle_current_line_blame, "Gitsigns toggle blame")
		end,
	},
}
