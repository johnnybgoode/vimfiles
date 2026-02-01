vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

vim.opt.timeoutlen = 500

vim.g.mapleader = "<Space>"
vim.keymap.set('c', '<C-A>', '<Home>')
vim.keymap.set('c', '<C-E>', '<End>')
vim.keymap.set('n', '<leader>i', '^')
vim.keymap.set('n', '<leader>a', '$')
vim.keymap.set('i', 'nn', '<Esc>', { silent = true })

-- Plugins
-- set the root directory for lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy.nvim"

-- ensure lazy.nvim is installed
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", lazypath})
end

-- add lazy.nvim to the runtime path
vim.opt.rtp:prepend(lazypath)

-- setup lazy.nvim and load your plugins
-- Optional: require("lazy").setup({{ import = "plugins" }})
require("lazy").setup({
  -- Add your plugins here in the format 'owner/repo-name'
  -- Example:
  -- 'nvim-treesitter/nvim-treesitter',
  'nvim-lualine/lualine.nvim',
  'nvim-treesitter/nvim-treesitter',
  'savq/melange-nvim',
  {
    "kylechui/nvim-surround",
    version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  }
}, {
  -- configuration options for lazy.nvim can go here
  change_detection = {
    notify = false,
  },
})

-- Surround
--require('mini.surround').setup()

-- Colors
vim.cmd.colorscheme 'melange'

vim.opt.cursorline = true
vim.opt.cursorcolumn = true
-- hi CursorLine cterm=NONE ctermbg=236 " #1c1c1c
-- hi CursorColumn cterm=NONE ctermbg=236 " #1c1c1c
