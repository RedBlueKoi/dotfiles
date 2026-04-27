local launchpad = require("launchpad");

launchpad.setup({
  projects = {
    { name = "dotfiles", path = "~/dotfiles" },
    { name = "nvim",     path = "~/.config/nvim" },
    { name = "cm-office/latest",     path = "~/projects/work/cm5-office/latest" },
  },
  -- Automatically open the dashboard when Neovim is started without
  -- file or directory arguments (e.g. just running `nvim`).
  auto_open = true,
})
