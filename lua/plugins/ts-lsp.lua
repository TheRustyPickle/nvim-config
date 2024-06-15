return {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            tsserver = {
                enabled = false,
            },
        },
        vtsls = {
            settings = {
                complete_function_calls = true,
                vtsls = {
                    enableMoveToFileCodeAction = true,
                    experimental = {
                        completion = {
                            enableServerSideFuzzyMatch = true,
                        },
                    },
                },
                typescript = {
                    updateImportsOnFileMove = { enabled = "always" },
                    suggest = {
                        completeFunctionCalls = true,
                    },
                    inlayHints = {
                        enumMemberValues = { enabled = true },
                        functionLikeReturnTypes = { enabled = true },
                        parameterNames = { enabled = "all" },
                        parameterTypes = { enabled = true },
                        propertyDeclarationTypes = { enabled = true },
                        variableTypes = { enabled = true },
                    },
                },
                javascript = {
                    updateImportsOnFileMove = { enabled = "always" },
                    suggest = {
                        completeFunctionCalls = true,
                    },
                    inlayHints = {
                        enumMemberValues = { enabled = true },
                        functionLikeReturnTypes = { enabled = true },
                        parameterNames = { enabled = "all" },
                        parameterTypes = { enabled = true },
                        propertyDeclarationTypes = { enabled = true },
                        variableTypes = { enabled = true },
                    },
                },
            },
        },
    },
}
