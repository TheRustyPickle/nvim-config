-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.g.neovide then
    -- vim.o.guifont = "FiraCode Nerd Font Mono:h12"
    vim.o.guifont = "CaskaydiaCove Nerd Font Mono:h12"
    -- vim.o.guifont = "JetBrainsMono NFM:h12"
    -- vim.o.guifont = "Mononoki Nerd Font Mono:h12"
    -- vim.o.guifont = "FantasqueSansM Nerd Font Mono:h13"
    -- vim.o.guifont = "Iosevka NFM:h12"
    vim.g.neovide_theme = "light"
    vim.g.neovide_refresh_rate = 144
    vim.g.neovide_cursor_smooth_blink = true
    vim.g.neovide_underline_stroke_scale = 3.2
    vim.g.neovide_cursor_animate_in_insert_mode = true
    vim.g.neovide_cursor_animate_command_line = true
    vim.g.neovide_scroll_animation_far_lines = 5
    vim.g.neovide_cursor_vfx_mode = "sonicboom"
    vim.opt.guicursor = {
        "n-v-c:block", -- Normal, Visual, Command modes: block cursor
        "i-ci-ve:ver25", -- Insert, Command-line insert, Visual-execute modes: vertical bar with 25% width
        "r-cr:hor20", -- Replace, Command-line replace modes: horizontal bar with 20% height
        "a:blinkwait400-blinkon400-blinkoff400", -- All modes: set blinking timing
    }
    vim.g.terminal_color_0 = "#5c5f77"
    vim.g.terminal_color_1 = "#d20f39"
    vim.g.terminal_color_2 = "#40a02b"
    vim.g.terminal_color_3 = "#df8e1d"
    vim.g.terminal_color_4 = "#1e66f5"
    vim.g.terminal_color_5 = "#ea76cb"
    vim.g.terminal_color_6 = "#179299"
    vim.g.terminal_color_7 = "#acb0be"
    vim.g.terminal_color_8 = "#6c6f85"
    vim.g.terminal_color_9 = "#d20f39"
    vim.g.terminal_color_10 = "#40a02b"
    vim.g.terminal_color_11 = "#df8e1d"
    vim.g.terminal_color_12 = "#1e66f5"
    vim.g.terminal_color_13 = "#ea76cb"
    vim.g.terminal_color_14 = "#179299"
    vim.g.terminal_color_15 = "#bcc0cc"
end
