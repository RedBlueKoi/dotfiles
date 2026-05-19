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
      require("tiny-inline-diagnostic").setup()
      vim.diagnostic.config({ virtual_text = false }) -- Disable Neovim's default virtual text diagnostics
    end,
  }
  -- {
  --   "lewis6991/gitsigns",
  --   opts = {}
  -- }
}
