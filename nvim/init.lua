-- Plugins
-- Lazy has to go first to load everything else
require("config.lazy")
-- Config
-- For plugins that require extensive config each in a separate file
require("config.theme")
-- Additional LSP configs
require("config.lsp")
-- Personal overrides
-- Changes to native NVim config and custom keymaps for plugins
require("rbk.keymap")
require("rbk.config")
