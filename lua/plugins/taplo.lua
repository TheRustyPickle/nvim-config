return {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            taplo = {
                keys = {
                    {
                        "K",
                        function()
                            if vim.fn.expand("%:t") == "Cargo.toml" and require("crates").popup_available() then
                                require("crates").show_versions_popup()
                            end
                        end,
                        desc = "Show availale crate versions",
                    },
                    {
                        "Y",
                        function()
                            if vim.fn.expand("%:t") == "Cargo.toml" and require("crates").popup_available() then
                                require("crates").show_features_popup()
                            end
                        end,
                        desc = "Show availale crates features",
                    },
                    {
                        "<leader>cu",
                        function()
                            if vim.fn.expand("%:t") == "Cargo.toml" and require("crates").popup_available() then
                                require("crates").upgrade_crate()
                            end
                        end,
                        desc = "Upgrade the selected crate",
                    },
                    {
                        "<leader>cU",
                        function()
                            if vim.fn.expand("%:t") == "Cargo.toml" and require("crates").popup_available() then
                                require("crates").upgrade_all_crates()
                            end
                        end,
                        desc = "Upgrade all crates",
                    }
                },
            },
        },
    },
}
