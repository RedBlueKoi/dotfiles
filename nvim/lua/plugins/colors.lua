return {
  {
    -- "folke/tokyonight.nvim",
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    lazy = false,
    config = function()
      -- vim.cmd.colorscheme "rose-pine"
      -- vim.cmd.colorscheme(color)
      -- vim.cmd.colorscheme("rose-pine")
      vim.cmd("colorscheme rose-pine")
      -- vim.cmd("colorscheme tokyonight")

      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
      vim.api.nvim_set_hl(0, "FloatTitle", { bg = "none" })
      vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      -- theme = "tokyonight"
      theme = "rose-pine"
    }
  }
}
