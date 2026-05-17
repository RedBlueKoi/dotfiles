require("vim._core.ui2").enable({})

-- Leader config
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'
-- vim.g.netrw_liststyle = 3

-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 8
vim.opt.autoread = true
vim.opt.colorcolumn = "80,100"

-- Indent
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.keymap.set('n', '<leader>pv',  '<cmd>Explore<cr>', { desc = "Explore to the netrw" })
vim.keymap.set('n', '<leader>re', '<cmd>restart<cr>', { desc = "Restart Nvim" })

vim.keymap.set('n', '<leader>lz', '<cmd>Lazy<cr>', { desc = "Call Lazy UI" })
vim.keymap.set('n', '<leader>ma', '<cmd>Mason<cr>', { desc = "Call Mason UI" })
vim.keymap.set('n', '<leader>lp', '<cmd>Launchpad<cr>', { desc = "Call Launchpad" })


vim.opt.clipboard:append({ 'unnamed', 'unnamedplus' })
-- vim.keymap.set('n', '<leader>aa', vim.diagnostic.open_float())
