return {
  "ThePrimeagen/harpoon",
  dependencies = {"nvim-lua/plenary.nvim"},

  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>ha", mark.add_file, { desc = "harpoon mark file" })
    vim.keymap.set("n", "<leader>hm", ui.toggle_quick_menu, { desc = "harpoon menu" })


    vim.keymap.set("n", "<leader>h1", function() ui.nav_file(1) end, { desc = "navigate to harpoon file 1" })
    vim.keymap.set("n", "<leader>h2", function() ui.nav_file(2) end, { desc = "navigate to harpoon file 2" })
    vim.keymap.set("n", "<leader>h3", function() ui.nav_file(3) end, { desc = "navigate to harpoon file 3" })
    vim.keymap.set("n", "<leader>h4", function() ui.nav_file(4) end, { desc = "navigate to harpoon file 4" })

    require("harpoon").setup()    

  end
}
