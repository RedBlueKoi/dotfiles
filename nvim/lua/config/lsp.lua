vim.lsp.config.lua_ls = {
  settings = {
    Lua = {
      -- Make the server aware of Neovim runtime files
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME
          -- Depending on the usage, you might want to add additional paths here.
          -- "${3rd}/luv/library"
          -- "${3rd}/busted/library",
        }
      },
      diagnostic = {
        globals = { "vim" }
      }
    }
  }
}

-- local vue_language_server_path = '/path/to/@vue/language-server'
local vue_language_server_path = vim.fn.expand '$MASON/packages/vue-language-server' -- .. '/vue-language-server' .. '/node_modules/@vue/language-server'
local tsserver_filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' }
local vue_plugin = {
  name = '@vue/typescript-plugin',
  location = vue_language_server_path,
  languages = { 'vue' },
  configNamespace = 'typescript',
}
local vtsls_config = {
  settings = {
    vtsls = {
      tsserver = {
        globalPlugins = {
          vue_plugin,
        },
      },
    },
  },
  filetypes = tsserver_filetypes,
}
local vue_ls_config = {}
local tsserver_config = {}

-- nvim 0.11 or above
vim.lsp.config('vtsls', vtsls_config)
vim.lsp.config('vue_ls', vue_ls_config)
vim.lsp.config('tsserver', tsserver_config)

vim.lsp.enable({
  "lua_ls",
  "vtsls",
  -- "tsgo" -- new faster alternative https://github.com/microsoft/typescript-go
  "vue_ls",
  "eslint",
  "tailwindcss"
})
