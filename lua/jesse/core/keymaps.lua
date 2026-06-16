vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
vim.keymap.set("n", "<leader>=", "<C-a>", { desc = "Increment number" }) -- increment
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })                   -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })                 -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })                    -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })               -- close current split window

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })                     -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })              -- close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })                     --  go to next tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })                 --  go to previous tab
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Function to insert your specific FRJE timestamp
local function insert_frje_timestamp()
  local timestamp = os.date("--- FRJE - %Y%m%d %H%M ---")

  -- nvim_put inserts text at cursor:
  -- {timestamp}: the string to insert
  -- "c": character-wise insertion
  -- true: follow the cursor (move cursor to end of string)
  -- true: create a new undo point
  vim.api.nvim_put({ timestamp }, "c", true, true)
end

-- Map <leader>dt in Normal mode
vim.keymap.set('n', '<leader>dt', insert_frje_timestamp, {
  desc = 'Insert FRJE work timestamp'
})

vim.keymap.set('n', '<leader>tt', "<cmd>NvimTreeToggle<CR>", { desc = "Toggle Nvim Tree" })
