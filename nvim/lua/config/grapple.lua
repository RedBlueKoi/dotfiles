-- local harpoon = require("harpoon")
-- harpoon:setup({})

-- vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end)
-- vim.keymap.set('n', '<C-e>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
-- vim.keymap.set('n', '<D-r>', function() harpoon:list():prev() end)
-- vim.keymap.set('n', '<C>2', function() harpoon:list():next() end)

local grapple = require("grapple")

vim.keymap.set('n', '<C-e>', function() grapple.toggle_tags() end)
vim.keymap.set('n', '<leader>a', function() grapple.tag() end)
vim.keymap.set('n', '<C-c>', function() grapple.cycle_tags("prev") end)
vim.keymap.set('n', '<C-v>', function() grapple.cycle_tags("next") end)
