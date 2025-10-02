return {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
        local highlight_colors = {
            "RainbowBlue",
            "RainbowPeach",
            "RainbowLavender",
            "RainbowGreen",
            "RainbowPink",
            "RainbowTeal",
            "RainbowYellow",
            "RainbowMauve",
            "RainbowSky",
            "RainbowRed",
            "RainbowRosewater",
            "RainbowMaroon",
        }

        local hooks = require("ibl.hooks")
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "RainbowRosewater", { fg = "#dc8a78" })
            vim.api.nvim_set_hl(0, "RainbowFlamingo", { fg = "#dd7878" })
            vim.api.nvim_set_hl(0, "RainbowPink", { fg = "#ea76cb" })
            vim.api.nvim_set_hl(0, "RainbowMauve", { fg = "#8839ef" })
            vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#d20f39" })
            vim.api.nvim_set_hl(0, "RainbowMaroon", { fg = "#e64553" })
            vim.api.nvim_set_hl(0, "RainbowPeach", { fg = "#fe640b" })
            vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#df8e1d" })
            vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#40a02b" })
            vim.api.nvim_set_hl(0, "RainbowTeal", { fg = "#179299" })
            vim.api.nvim_set_hl(0, "RainbowSky", { fg = "#04a5e5" })
            vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#1e66f5" })
            vim.api.nvim_set_hl(0, "RainbowLavender", { fg = "#7287fd" })
        end)
        vim.g.rainbow_delimiters = { highlight = highlight_colors }
        require("ibl").setup({
            indent = {
                tab_char = "┃",
                char = "│",
                highlight = highlight_colors,
            },

            scope = {
                enabled = true,
                show_start = true,
                show_end = true,
                char = "▍",
                highlight = highlight_colors,
            },
        })
        hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
    end,
}
