return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        lazy = false,
        opts = {
            flavour = "latte",
            term_colors = true,
            no_italic = false,
            no_bold = false,
            no_underline = false,
        },
        integrations = {
            blink = true,
        },
    },
    {
        "uloco/bluloco.nvim",
        lazy = false,
        priority = 1000,
        dependencies = { "rktjmp/lush.nvim" },
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin-latte",
        },
    },
}
