vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

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

-- Plugins
require("config.lazy")

-- autosave
vim.opt.updatetime = 2000
vim.api.nvim_create_autocmd({ "InsertLeave", "CursorHold" }, {
	pattern = { "*" },
	callback = function()
		vim.cmd("silent! update")
	end,
	desc = "Autosave",
})

--local lazypath = vim.fn.stdpath("data") .. "/lazy.nvim"

-- ensure lazy.nvim is installed
-- if not vim.loop.fs_stat(lazypath) then
--	vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", lazypath })
--end

vim.opt.cursorline = true
vim.opt.cursorcolumn = true
-- hi CursorLine cterm=NONE ctermbg=236 " #1c1c1c
-- hi CursorColumn cterm=NONE ctermbg=236 " #1c1c1c
