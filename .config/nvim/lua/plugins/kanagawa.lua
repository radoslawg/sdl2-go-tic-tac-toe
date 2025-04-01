return {
	"rebelot/kanagawa.nvim", 
	config = function ()
		require('kanagawa').setup({
			compile = true,
			transparent = true,
			theme = "dragon",
			background = {
				dark = "dragon",
				light = "lotus",
			}
		});

		vim.cmd("colorscheme kanagawa")
	end,
}
