return {
    "mrcjkb/rustaceanvim",
    version = "^4",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "mfussenegger/nvim-dap",
        {
            "lvimuser/lsp-inlayhints.nvim",
            opts = {},
        },
    },
    ft = { "rust" },
    config = function()
        vim.g.rustaceanvim = {
            inlay_hints = {
                highlight = "NonText",
            },
            tools = {
                hover_actions = {
                    auto_focus = true,
                },
            },
            server = {
                on_attach = function(client, bufnr)
                    require("lsp-inlayhints").on_attach(client, bufnr)
                end,
                default_settings = {
                    -- rust-analyzer language server configuration
                    ["rust-analyzer"] = {
                        cargo = {
                            allFeatures = true,
                            loadOutDirsFromCheck = true,
                            buildScripts = {
                                enable = true,
                            },
                        },
                        -- Add clippy lints for Rust.
                        checkOnSave = {
                            allFeatures = true,
                            command = "clippy",
                        },
                        procMacro = {
                            enable = true,
                            ignored = {
                                ["async-trait"] = { "async_trait" },
                                ["napi-derive"] = { "napi" },
                                ["async-recursion"] = { "async_recursion" },
                            },
                        },
                    },
                },
            },
        }
    end,
}
