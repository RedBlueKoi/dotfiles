return {
  {
    "mfussenegger/nvim-lint",
    opts = {},
    config = function () end
  },
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    config = function()
      require('tiny-inline-diagnostic').setup()
      vim.diagnostic.config({ virtual_text = false }) -- Disable Neovim's default virtual text diagnostics
    end,
  },
  {
    "marilari88/twoslash-queries.nvim",
    opts = {},
    config = function()
      require('twoslash-queries').setup({
        multi_line = true, -- to print types in multi line mode
        is_enabled = true, -- to keep disabled at startup and enable it on request with the TwoslashQueriesEnable 
        highlight = "Type", -- to set up a highlight group for the virtual text
      })
    end,
  }
  -- {
  --   "lewis6991/gitsigns",
  --   opts = {}
  -- }
}
