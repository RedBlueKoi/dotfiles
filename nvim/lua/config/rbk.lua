require("vim._core.ui2").enable({})

-- Leader config
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'
-- vim.g.netrw_liststyle = 3

-- Basic settings
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.wrap = false
vim.o.scrolloff = 10
vim.o.sidescrolloff = 8
vim.o.autoread = true
vim.o.colorcolumn = "80,100"

-- Indent
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = false
vim.o.incsearch = true

vim.keymap.set('n', '<leader>pv',  '<cmd>Explore<cr>', { desc = "Explore to the netrw" })
vim.keymap.set('n', '<leader>re', '<cmd>restart<cr>', { desc = "Restart Nvim" })

vim.keymap.set('n', '<leader>lz', '<cmd>Lazy<cr>', { desc = "Call Lazy UI" })
vim.keymap.set('n', '<leader>ma', '<cmd>Mason<cr>', { desc = "Call Mason UI" })
vim.keymap.set('n', '<leader>lp', '<cmd>Launchpad<cr>', { desc = "Call Launchpad" })


vim.o.clipboard:append({ 'unnamed', 'unnamedplus' })
-- vim.keymap.set('n', '<leader>aa', vim.diagnostic.open_float())
