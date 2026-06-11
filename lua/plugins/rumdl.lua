return {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            rumdl = {
                settings = {
                    ["rumdl"] = {},
                },

                keys = {
                    {
                        "<leader>cf",
                        function()
                            if vim.bo.filetype ~= "markdown" then
                                return
                            end

                            local bufnr = vim.api.nvim_get_current_buf()
                            local file = vim.api.nvim_buf_get_name(bufnr)

                            -- 1. Save without triggering autocommands to prevent loops
                            vim.cmd("noautocmd w")

                            vim.fn.jobstart({ "rumdl", "fmt", file }, {
                                detach = true,
                                on_exit = function(_, code)
                                    if code == 0 then
                                        -- 2. Schedule the reload to ensure it happens
                                        -- outside the job callback context
                                        vim.schedule(function()
                                            if vim.api.nvim_buf_is_valid(bufnr) then
                                                vim.cmd("checktime " .. bufnr)
                                            end
                                        end)
                                    end
                                end,
                            })
                        end,
                        desc = "rumdl: Format current file",
                    },
                },
            },
        },
    },
}
