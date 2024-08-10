return {
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "bluloco",
        },
    },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000, lazy = false },
    { "sainnhe/everforest", name = "everforest" },
    { "sainnhe/edge" },
    {
        "uloco/bluloco.nvim",
        lazy = false,
        priority = 1000,
        dependencies = { "rktjmp/lush.nvim" },
    },
}
