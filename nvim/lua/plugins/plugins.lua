return {
	"nvim-treesitter/nvim-treesitter",
	"nvim-lualine/lualine.nvim",
	"nvim-treesitter/nvim-treesitter",
	"savq/melange-nvim",
	{
		"kylechui/nvim-surround",
		version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "melange",
		},
	},
	{ "blink.cmp", enabled = false },
	{ "folke/noice.nvim", enabled = false },
	{ "folke/which-key.nvim", enabled = false },
}
