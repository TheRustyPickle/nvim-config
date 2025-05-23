-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.g.snacks_animate = true
vim.g.autoformat = false
vim.opt.scrolloff = 15
vim.g.lazyvim_python_ruff = "ruff"
vim.g.lazyvim_python_lsp = "basedpyright"
vim.g.background = "light"
vim.g.autoformat = false
vim.g.lazyvim_picker = "snacks"
vim.diagnostic.config({ virtual_lines = { current_line = true } })
