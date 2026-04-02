return {
  "epwalsh/obsidian.nvim",
  version = nil,  -- recommended, use latest release instead of latest commit
  lazy = true,
  cmd = {
    "ObsidianSearch",
    "ObsidianNew",
    "ObsidianOpen",
  },
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
    -- Optional
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter/nvim-treesitter",
    "hrsh7th/nvim-cmp",

    -- see below for full list of optional dependencies 👇
  },


  completion = {
    nvim_cmp = true,
    min_chars = 2,
  },

  keys = {
    { "<leader>on", "<cmd>ObsidianNew<cr>", desc = "New Obsidian Note" },
    { "<leader>os", "<cmd>ObsidianSearch<cr>", desc = "Search Obsidian Notes" },
  },

  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/Obsidian/NoteVault",
      },
    },
    picker = {
        name = "telescope.nvim"
    },
    -- Completion of wiki links, local markdown links, and tags
    -- see below for full list of options 👇
  },
}
