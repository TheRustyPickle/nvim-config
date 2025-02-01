return {
    "neovim/nvim-lspconfig",
    opts = {
        diagnostics = {
            virtual_text = false,
        },
        servers = {
            harper_ls = {
                settings = {
                    ["harper-ls"] = {
                        codeActions = {
                            forceStable = true,
                        },
                        linters = {
                            spell_check = true,
                            spelled_numbers = false,
                            an_a = true,
                            sentence_capitalization = true,
                            unclosed_quotes = true,
                            wrong_quotes = true,
                            long_sentences = true,
                            repeated_words = true,
                            spaces = true,
                            matcher = true,
                            correct_number_suffix = true,
                            number_suffix_capitalization = true,
                            multiple_sequential_pronouns = true,
                            linking_verbs = true,
                            avoid_curses = true,
                            terminating_conjunctions = true,
                        },
                    },
                },
            },
        },
    },
}
