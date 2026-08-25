return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    opts = {
      highlight = { enabled = true }
    },
    config = function()
      require('nvim-treesitter').install({
        'javascript',
        'typescript',
        'dockerfile',
        'markdown',
        'python',
        'json5',
        'json',
        'java',
        'html',
        'ruby',
        'yaml',
        'bash',
        'diff',
        'vue',
        'css',
        'lua',
        'xml',
        'zsh',
        'sql',
        'tsx',
        'csv'
      })
    end
  }
}
