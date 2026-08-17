local mason = require("mason")
local masonConfig = require("mason-lspconfig")

mason.setup()
local serverMap = {
  "lua_ls",
  "vtsls",
  -- "tsgo" -- new faster alternative https://github.com/microsoft/typescript-go
  "vue_ls",
  "eslint",
  "tailwindcss",
}
masonConfig.setup({
  automatic_enable = false,
  ensure_installed = serverMap
})

vim.lsp.enable(serverMap)

local capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.lsp.config('*', { capabilities = capabilities })
-- for _,v in ipairs(serverMap) do
--   vim.lsp.config(v, { capabilities = capabilities })
-- end

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
        -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
        -- library = vim.api.nvim_get_runtime_file("", true)
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
local tsserver_config = {
  on_attach = function(client, bufnr)
    require('twoslash-queries').attach(client, bufnr)
  end
}

-- nvim 0.11 or above
vim.lsp.config('vtsls', vtsls_config)
vim.lsp.config('vue_ls', vue_ls_config)
vim.lsp.config('tsserver', tsserver_config)
