-- Misc keybindings
vim.keymap.set('n', '<leader>pv',  '<cmd>Explore<cr>', { desc = "Explore to the netrw" })
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { desc = "Language format" })
vim.keymap.set('n', '<leader>re', '<cmd>restart<cr>', { desc = "Restart Nvim" })
vim.keymap.set('n', '<leader>ww', '<cmd>exit<cr>', { desc = "Exit Nvim" })

-- Plugin call keybindings
vim.keymap.set('n', '<leader>lz', '<cmd>Lazy<cr>', { desc = "Call Lazy UI" })
vim.keymap.set('n', '<leader>ma', '<cmd>Mason<cr>', { desc = "Call Mason UI" })
vim.keymap.set('n', '<leader>lp', '<cmd>Launchpad<cr>', { desc = "Call Launchpad" })
vim.keymap.set('n', '<leader>fa', '<cmd>LspEslintFixAll<cr>', { desc = "Fix all fixable LSP errors" })
