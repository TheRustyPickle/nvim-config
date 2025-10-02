return {
    "saghen/blink.cmp",
    opts = {
        signature = {
            enabled = true
        },
        completion = {
            menu = {
                scrollbar = false,
                draw = {
                    columns = {
                        { "kind_icon" },
                        { "label", "label_description", gap = 1 },
                        { "kind" },
                    },
                },
            },
            documentation = {
                window = {
                    scrollbar = false,
                },
            },
        },
    },
}
