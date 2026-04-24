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
    { "<leader>op", "<cmd>ObsidianPasteImg<cr>", desc = "Paste Image" },
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
  -- Specify how to handle attachments.
  attachments = {
    -- The default folder to place images in via `:ObsidianPasteImg`.
    -- If this is a relative path it will be interpreted as relative to the vault root.
    -- You can always override this per image by passing a full path to the command instead of just a filename.
    img_folder = "~/Obsidian/NoteVault/Assets",  -- This is the default

    -- Optional, customize the default name or prefix when pasting images via `:ObsidianPasteImg`.
    ---@return string
    img_name_func = function()
      -- Prefix image names with timestamp.
      return string.format("%s_%s", os.date("%Y%m%d"), os.time())
    end,

    -- A function that determines the text to insert in the note when pasting an image.
    -- It takes two arguments, the `obsidian.Client` and an `obsidian.Path` to the image file.
    -- This is the default implementation.
    ---@param client obsidian.Client
    ---@param path obsidian.Path the absolute path to the image file
    ---@return string
    img_text_func = function(client, path)
      -- path = client:vault_relative_path(path) or path
      return string.format("![%s](%s)", path.name, path)
    end,
  },
  },
}
