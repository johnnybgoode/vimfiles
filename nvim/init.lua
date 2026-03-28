require("config.lazy")

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
-- vim.opt.linespace = 16

vim.opt.swapfile = false
vim.opt.undofile = false
vim.opt.clipboard = "unnamedplus"
vim.opt.timeoutlen = 500

vim.wo.relativenumber = true

vim.g.mapleader = " "
vim.keymap.set("c", "<C-A>", "<Home>")
vim.keymap.set("c", "<C-E>", "<End>")
vim.keymap.set("n", "<leader>i", "m`^")
vim.keymap.set("n", "<leader>a", "m`$")
vim.keymap.set("i", "hh", "<Esc>", { silent = true })
vim.keymap.set("n", "<leader>s", function()
	vim.cmd("source %")
	vim.notify("Neovim config reload!", vim.log.levels.INFO)
end)

vim.opt.cursorline = true
vim.opt.cursorcolumn = true
-- hi CursorLine cterm=NONE ctermbg=236 " #1c1c1c
-- hi CursorColumn cterm=NONE ctermbg=236 " #1c1c1c

-- autosave
vim.opt.updatetime = 2000
vim.api.nvim_create_autocmd({ "InsertLeave", "CursorHold" }, {
	pattern = { "*" },
	callback = function()
		vim.cmd("silent! update")
	end,
	desc = "Autosave",
})

-- tmux window title
local last_win_title = vim.fn.system("tmux display-message -p '#W'")
local function update_tmux_title()
	local filename = vim.fs.basename(vim.fn.expand("%:f"))
	if filename == "" then
		filename = "new"
	end

	local modified = vim.bo.modified and " [+]" or ""
	local title = filename .. modified

	vim.fn.system(string.format("tmux rename-window 'nv %s'", title:gsub("'", "''"):sub(1, 20)))
end

if os.getenv("TMUX") then
	vim.api.nvim_create_autocmd({ "BufEnter", "BufModifiedSet" }, {
		callback = update_tmux_title,
	})

	vim.api.nvim_create_autocmd({ "VimLeavePre" }, {
		callback = function()
			vim.fn.system(string.format("tmux rename-window '%s'", last_win_title:gsub("\n", "")))
		end,
	})
end
