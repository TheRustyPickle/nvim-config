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

local map = vim.keymap.set
map("n", "<leader>cz", ":RustAnalyzer restart<CR>", { desc = "Restart Rust Analyzer", silent = true })
map("n", "<leader>cx", ":RustAnalyzer start<CR>", { desc = "Start Rust Analyzer", silent = true })
map("n", "<leader>ghv", ":DiffviewOpen<CR>", { desc = "Start DiffView", silent = true })
map("n", "<leader>ghV", ":lua open_diffview_with_branch()<CR>", { desc = "Start DiffView on Branch", silent = true })

function _G.open_diffview_with_branch()
    local branch_name = vim.fn.input("Enter branch name: ")
    if branch_name ~= "" then
        vim.cmd("DiffviewOpen origin/" .. branch_name .. "...HEAD")
    else
        print("No branch name entered.")
    end
end
