return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local g = vim.g
    local opt = vim.opt

    g.loaded_netrw = 1
    g.loaded_netrwPlugin = 1
    opt.termguicolors = true

    require("nvim-tree").setup()
  end
}
