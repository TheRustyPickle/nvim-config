return {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy", -- Or `LspAttach`
    config = function()
        require("tiny-inline-diagnostic").setup({
            blend = { factor = 0.40 },
        })
    end,
}
