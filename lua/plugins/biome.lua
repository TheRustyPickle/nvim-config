return {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            tsserver = { enabled = false },
            vtsls = {
                enabled = true,
                keys = {
                    {
                        "<leader>co",
                        function()
                            local file = vim.api.nvim_buf_get_name(0)
                            vim.cmd("w")
                            vim.fn.jobstart({ "biome", "check", "--fix", file }, {
                                stdout_buffered = true,
                                on_exit = function(_, code)
                                    if code == 0 then
                                        if vim.fn.getbufinfo(file)[1].changed == 0 then
                                            vim.cmd("checktime")
                                        end
                                    end
                                end,
                            })

                            vim.cmd("w")
                        end,
                        desc = "Biome: Fix current file",
                    },
                },
            },
        },
    },
}
