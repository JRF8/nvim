return{
  "cappyzawa/trim.nvim",
  config = function ()
    require("trim").setup({
      highlight = true,
      trim_current_line = true,

      ft_blocklist = {
        "harpoon",
        "harpoon-menu",
        "TelescopePrompt",
        "neo-tree",
        "notify",
        "lazy"
      },
    })
  end
}
