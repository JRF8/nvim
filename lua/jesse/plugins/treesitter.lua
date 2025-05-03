return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", 
  
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      indent = { enable = true },
      ensure_installed = { "lua" },
    })
  end
}
