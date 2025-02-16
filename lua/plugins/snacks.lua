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
        toggle = {
            enabled = true,
            which_key = true,
            notify = true,
            color = {
                enabled = "green",
                disabled = "red",
            },
        },
        words = {
            enabled = true,
        },
        explorer = {
            enabled = true,
        },
        picker = {
            enabled = true,
            sources = {
                explorer = {},
            },
        },
        statuscolumn = {
            enabled = true,
        },
    },
}
