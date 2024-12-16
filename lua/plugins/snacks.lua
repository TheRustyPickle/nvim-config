return {
    "folke/snacks.nvim",
    opts = {
        indent = {
            enabled = true,
            indent = {
                enabled = false,
            },
            animate = {
                enabled = true,
                duration = {
                    step = 40,
                    total = 500,
                },
            },
            scope = {
                enabled = false,
            },
            chunk = {
                enabled = true,
                char = {
                    corner_top = "╭",
                    corner_bottom = "╰",
                    horizontal = "─",
                    vertical = "│",
                    arrow = "→",
                },
            },
        },
        scroll = { enabled = false },
    },
}
