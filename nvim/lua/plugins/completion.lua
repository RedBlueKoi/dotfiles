return {
  {
    "L3MON4D3/LuaSnip",
    opts = {}
  },
  {
    'saghen/blink.cmp',
    version = "1.*",
    dependencies = {
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
}
