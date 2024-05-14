return {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
        table.insert(opts.sources, 1, {
            name = "crates",
            group_index = 1,
            priority = 100,
        })
    end,
    dependencies = {
        {
            "Saecki/crates.nvim",
            event = { "BufRead Cargo.toml" },
            opts = {
                completion = {
                    cmp = { enabled = true },
                },
            },
        },
    },
}
