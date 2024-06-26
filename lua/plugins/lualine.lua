return {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
        -- Removed the clock and moved stuff from lualine_y to z
        opts.options.section_separators = { left = "", right = "" }
        opts.sections.lualine_a = { { "mode", separator = { left = " " }, padding = { left = 0, right = 1 } } }
        opts.sections.lualine_b = { { "branch", padding = { left = 1, right = 0 } } }
        opts.sections.lualine_y = {}
        -- The right side separator should have an extra space on the right side but for some reason neovide
        -- has some gap in that corner so this doesn't seem necessary anymore.
        opts.sections.lualine_z = {
            { "progress", separator = " ", padding = { left = 0, right = 0 } },
            { "location", padding = { left = 0, right = 0 }, separator = { right = "" } },
        }
    end,
}
