return {
  {
    "L3MON4D3/LuaSnip",
    opts = {}
  },
  {
    'saghen/blink.cmp',
    dependencies = {
      -- 'saghen/blink.lib',
      -- optional: provides snippets for the snippet source
      'rafamadriz/friendly-snippets',
    },
    build = function()
      -- build the fuzzy matcher, optionally add a timeout to `pwait(timeout_ms)`
      -- you can use `gb` in `:Lazy` to rebuild the plugin as needed
      require('blink.cmp').build():pwait()
    end,

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      fuzzy = { implementation = "lua" }
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
