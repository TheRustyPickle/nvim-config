return {
    "mrcjkb/rustaceanvim",
    version = "^5",
    lazy = false,
    opts = {
        server = {
            default_settings = {
                ["rust-analyzer"] = {
                    procMacro = {
                        enable = true,
                        ignored = {
                            ["async-trait"] = { "" },
                            ["napi-derive"] = { "" },
                            ["async-recursion"] = { "" },
                        },
                    },
                },
            },
        },
    },
}
