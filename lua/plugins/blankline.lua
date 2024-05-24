return {
    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            local highlight_colors = {
                "RainbowRed",
                "RainbowBlue",
                "RainbowGreen",
                "RainbowViolet",
                "RainbowCyan",
                "RainbowPink",
                "RainbowTeal",
                "RainbowIndigo",
                "RainbowBrown",
                "RainbowSkyBlue",
                "RainbowPurple",
                "RainbowOlive",
                "RainbowDarkSlateBlue",
                "RainbowSaddleBrown",
                "RainbowDarkOliveGreen",
            }

            local hooks = require("ibl.hooks")
            hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
                vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
                vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
                vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
                vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
                vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
                vim.api.nvim_set_hl(0, "RainbowPink", { fg = "#FF69B4" })
                vim.api.nvim_set_hl(0, "RainbowTeal", { fg = "#008080" })
                vim.api.nvim_set_hl(0, "RainbowIndigo", { fg = "#4B0082" })
                vim.api.nvim_set_hl(0, "RainbowBrown", { fg = "#A52A2A" })
                vim.api.nvim_set_hl(0, "RainbowSkyBlue", { fg = "#3940dd" })
                vim.api.nvim_set_hl(0, "RainbowPurple", { fg = "#800080" })
                vim.api.nvim_set_hl(0, "RainbowOlive", { fg = "#808000" })
                vim.api.nvim_set_hl(0, "RainbowDarkSlateBlue", { fg = "#483D8B" })
                vim.api.nvim_set_hl(0, "RainbowSaddleBrown", { fg = "#8B4513" })
                vim.api.nvim_set_hl(0, "RainbowDarkOliveGreen", { fg = "#556B2F" })
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
    },
}
