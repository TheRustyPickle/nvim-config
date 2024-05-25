-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
if vim.g.neovide then
    vim.keymap.set("n", "<sc-v>", '"+P') -- Paste normal mode
    vim.keymap.set("v", "<sc-v>", '"+P') -- Paste visual mode
    vim.keymap.set("c", "<sc-v>", "<C-R>+") -- Paste command mode
    vim.keymap.set("i", "<sc-v>", '<ESC>l"+Pli') -- Paste insert mode
    vim.api.nvim_set_keymap("t", "<sc-v>", '<C-\\><C-n>"+Pi', { noremap = true }) -- Paste in terminal mode, specifically added for lazy git
end
