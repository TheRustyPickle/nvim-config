return {
    "mrcjkb/rustaceanvim",
    lazy = false,
    version = "*",
    opts = {
        server = {
            on_attach = function(_, bufnr)
                vim.keymap.set("n", "J", function()
                    vim.cmd.RustLsp({ "hover", "actions" })
                end, { desc = "Hover Actions", buffer = bufnr })

                vim.keymap.set("n", "<leader>cS", function()
                    vim.cmd.RustLsp("codeAction")
                end, { desc = "Code Action", buffer = bufnr })
            end,
            default_settings = {
                ["rust-analyzer"] = {
                    lens = {
                        enable = false,
                    },
                },
            },
        },
    },
}
