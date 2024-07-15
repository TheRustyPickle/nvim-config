-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.g.autoformat = false
vim.opt.scrolloff = 15

local map = vim.keymap.set
map("n", "<leader>cz", ":RustAnalyzer restart<CR>", { desc = "Restart Rust Analyzer", silent = true })
