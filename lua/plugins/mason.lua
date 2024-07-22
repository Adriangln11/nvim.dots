return {

  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
    },

    config = function()
      local mason = require("mason")
      local mason_lspconfig = require("mason-lspconfig")

      mason.setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })

      mason_lspconfig.setup({
        ensure_installed = {
          "tsserver",
          "html",
          "cssls",
          "tailwindcss",
          "lua_ls",
          "emmet_ls",
          "eslint",
          "astro",
          "bashls",
          "jdtls",
          "pyright",
          "dockerls",
        },

        automatic_installation = true,
      })
    end,

    -- opts = function(_, opts)
    --   vim.list_extend(opts.ensure_installed, {
    --     "luacheck",
    --     "shellcheck",
    --     "shfmt",
    --     "prettierd",
    --     "eslint-lsp",
    --     "tailwindcss-language-server",
    --     "typescript-language-server",
    --     "css-lsp",
    --   })
    -- end,
  },
}
