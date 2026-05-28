return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    -- 1. Setup the base Mason tool manager first
    require("mason").setup()

    -- 2. Setup the LSP bridge
    require("mason-lspconfig").setup({
      ensure_installed = {
        -- Python
        "pyright",
        "ruff",
        -- C
        "clangd",
        -- lua
        "lua_ls",
      },
    })
  end,
}
