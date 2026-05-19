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

-- TODO: vue ls screams that it requires ts_ls even when ts_ls is present
local capabilities = require('cmp_nvim_lsp').default_capabilities()
for _,v in ipairs(serverMap) do
  vim.lsp.config(v, { capabilities = capabilities })
end

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


-- If you are using mason.nvim, you can get the ts_plugin_path like this
-- For Mason v1,
-- local mason_registry = require('mason-registry')
-- local vue_language_server_path = mason_registry.get_package('vue-language-server'):get_install_path() .. '/node_modules/@vue/language-server'
-- For Mason v2,
-- local vue_language_server_path = vim.fn.expand '$MASON/packages' .. '/vue-language-server' .. '/node_modules/@vue/language-server'
-- or even
-- local vue_language_server_path = vim.fn.stdpath('data') .. "/mason/packages/vue-language-server/node_modules/@vue/language-server"

-- IMPORTANT: nvchad users cannot use `$MASON` directly as the option is set to `skip`, see: https://github.com/NvChad/NvChad/blob/29ebe31ea6a4edf351968c76a93285e6e108ea08/lua/nvchad/configs/mason.lua#L4

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

-- nvim 0.11 or above
vim.lsp.config('vtsls', vtsls_config)
vim.lsp.config('vue_ls', vue_ls_config)
