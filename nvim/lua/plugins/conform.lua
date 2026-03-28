return {
	"stevearc/conform.nvim",
	opts = {
		-- Define your formatters by filetype
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { "biome", "prettier", stop_after_first = true }, -- Try biome first, then fallback to prettier
			typescript = { "biome", "prettier", stop_after_first = true },
		},
		-- Set default options
		default_format_opts = {
			timeout_ms = 3000,
			lsp_format = "fallback", -- Use LSP formatting if no specific formatter is found
		},
		-- Format on save is managed by LazyVim, don't set it here directly
	},
}
