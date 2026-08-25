return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "vtsls",
        -- "tsgo" -- new faster alternative https://github.com/microsoft/typescript-go
        "vue_ls",
        "eslint",
        "tailwindcss",
      }
    },
    -- config = function()
    --   local capabilities = require('cmp_nvim_lsp').default_capabilities()
    --   vim.lsp.config('*', { capabilities = capabilities })
    -- end,
    dependencies = {
      "neovim/nvim-lspconfig",
      {
        "mason-org/mason.nvim",
        opts = {
          ui = {
            icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗"
            }
          }
        }
      },
    },
  }
}
