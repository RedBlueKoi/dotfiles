-- Theme
vim.pack.add({
  { src = "https://github.com/rose-pine/neovim" },
})

-- Lualine
vim.pack.add({
  { src = "https://github.com/nvim-lualine/lualine.nvim" },
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
})

-- Telescope
vim.pack.add({
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
  { src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim" },
  { src = "https://github.com/nvim-lua/plenary.nvim" },
})

-- LSP
vim.pack.add({
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/mason-org/mason.nvim' },
  { src = 'https://github.com/mason-org/mason-lspconfig.nvim' },
})

-- Autoclose
vim.pack.add({
  { src = 'https://github.com/m4xshen/autoclose.nvim' },
})

-- CMP
vim.pack.add({
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/hrsh7th/cmp-nvim-lsp' },
  { src = 'https://github.com/hrsh7th/cmp-buffer' },
  { src = 'https://github.com/hrsh7th/cmp-path' },
  { src = 'https://github.com/hrsh7th/cmp-cmdline' },
  { src = 'https://github.com/hrsh7th/nvim-cmp' },
  { src = 'https://github.com/L3MON4D3/LuaSnip' },
  { src = 'https://github.com/saadparwaiz1/cmp_luasnip' },
})

-- Inline Diagnostics
vim.pack.add({
  { src = 'https://github.com/rachartier/tiny-inline-diagnostic.nvim' },
})

-- Inline Diagnostics
vim.pack.add({
  { src = 'https://github.com/ThePrimeagen/harpoon', version = 'harpoon2' },
})
