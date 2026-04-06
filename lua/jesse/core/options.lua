vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.autoindent = true

-- disable auto comment next line
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove({ 'r', 'o' })
  end,
})

vim.opt.clipboard:append("unnamedplus")

local api = vim.api
local function augroup(name) return api.nvim_create_augroup("clean_cr_" .. name, { clear = true }) end

-- Remove \r (carriage return) ^M on paste or on opening files
api.nvim_create_autocmd({ "BufReadPost", "TextChanged", "TextChangedI" }, {
  group = augroup("remove_cr"),
  callback = function()
    if vim.bo.modifiable then
      pcall(vim.cmd, [[%s/\r//g]])
    end
  end,
})

vim.opt.conceallevel = 2
