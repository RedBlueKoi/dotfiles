local mason = require("mason")
local masonConfig = require("mason-lspconfig")

mason.setup()
local serverMap = {
    "lua_ls",
    "ts_ls",
    "vtsls",
    "vue_ls",
    "eslint",
    "tailwindcss",
}
masonConfig.setup({
  automatic_enable = false,
  ensure_installed = serverMap
})

-- TODO: vue ls screams that it requires ts_ls even when ts_ls is present
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- vim.lsp.config('<YOUR_LSP_SERVER>', { capabilities = capabilities })
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

vim.lsp.enable(serverMap)
