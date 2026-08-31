-- Updated UI by default
require("vim._core.ui2").enable({})

-- Leader config
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- Default netrw list style
-- vim.g.netrw_liststyle = 3

--Consistent line numbers in netrw
vim.g.netrw_bufsettings = 'noma nomod nu rnu nobl nowrap ro'
-- Use nvim-tree instead
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 8
vim.opt.winborder = 'rounded'

-- Spell checker
vim.opt.spell = true
vim.opt.spelllang = 'en_us'

-- Reload buffer when edited outside
vim.opt.autoread = true

-- Vertical columns in the editor
vim.opt.colorcolumn = "100"

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

-- Allow usage of a global clipboard
vim.opt.clipboard:append({ 'unnamed', 'unnamedplus' })
-- vim.diagnostic.enable()
