return {
  {
    "nvim-mini/mini.nvim",
    version = "*",
    opts = {},
    config = function()
      require('mini.ai').setup()
      -- Animation plugin disabled(sad)
      -- due to issues when scrolling the screen on the touch pad
      -- require('mini.animate').setup()
      require('mini.align').setup()
      require('mini.move').setup({
        mappings = {
          left  = '<S-h>',
          right = '<S-l>',
          down  = '<S-j>',
          up    = '<S-k>',

          line_left  = '<S-left>',
          line_right = '<S-right>',
          line_down  = '<S-down>',
          line_up    = '<S-up>',
        }
      })
      require('mini.pairs').setup({
        modes = { insert = true, command = true, terminal = false },
        -- skip autopair when next character is one of these
        skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
        -- skip autopair when the cursor is inside these treesitter nodes
        skip_ts = { "string" },
        -- skip autopair when next character is closing pair
        -- and there are more closing pairs than opening pairs
        skip_unbalanced = true,
        -- better deal with markdown code blocks
        markdown = true,
      })
    end
  }
}
