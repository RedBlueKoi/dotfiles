return {
  {
    "L3MON4D3/LuaSnip",
    opts = {}
  },
  {
    'saghen/blink.cmp',
    version = "1.*",
    dependencies = {
      -- 'saghen/blink.lib',
      -- optional: provides snippets for the snippet source
      'rafamadriz/friendly-snippets',
    },
    opts = {
      completion = {
        documentation = {
          auto_show = true
        }
      },

      sources = {
        default = {
          "lsp",
          "path",
          "snippets",
          "buffer"
        }
      },

      fuzzy = { implementation = "prefer_rust_with_warning" },
      
      keymap = {
        preset = "enter",
        ["<C-y>"] = { "select_and_accept" },
      },
    },
  }
  --   {
  --     "hrsh7th/nvim-cmp",
  --     dependencies = {
  --       "neovim/nvim-lspconfig",
  --       "hrsh7th/cmp-nvim-lsp",
  --       "hrsh7th/cmp-buffer",
  --       "hrsh7th/cmp-path",
  --       "hrsh7th/cmp-cmdline",
  --       "L3MON4D3/LuaSnip",
  --       "saadparwaiz1/cmp_luasnip",
  --     },
  --     opts = {}
  --   }
}
