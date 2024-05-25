-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.g.neovide then
    -- vim.o.guifont = "FiraCode Nerd Font:h12"
    vim.o.guifont = "CaskaydiaCove NF:h12"
    -- vim.o.guifont = "JetBrainsMono NF:h12"
    -- vim.o.guifont = "Mononoki Nerd Font:h12"
    -- vim.o.guifont = "FantasqueSansM Nerd Font:h13"
    vim.g.neovide_theme = "light"
    vim.g.neovide_refresh_rate = 144
    vim.g.neovide_cursor_smooth_blink = true
    vim.g.neovide_underline_stroke_scale = 3.2
    vim.g.neovide_cursor_animate_in_insert_mode = true
    vim.g.neovide_cursor_animate_command_line = true
    vim.g.neovide_scroll_animation_far_lines = 5
    vim.opt.guicursor = {
        "n-v-c:block", -- Normal, Visual, Command modes: block cursor
        "i-ci-ve:ver25", -- Insert, Command-line insert, Visual-execute modes: vertical bar with 25% width
        "r-cr:hor20", -- Replace, Command-line replace modes: horizontal bar with 20% height
        "a:blinkwait400-blinkon400-blinkoff400", -- All modes: set blinking timing
    }
end
