return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        -- This tells conform to use ruff for python files
        python = { "ruff_format", "ruff_fix" },
        -- You can add other languages here too
        lua = { "stylua" },
      },
      -- This is the "magic" that makes it feel like an IDE
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      },
    })

    -- Optional: A keymap to format manually with <leader>mp (Modify Project)
    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
