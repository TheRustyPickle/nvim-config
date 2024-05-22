return {
    "okuuva/auto-save.nvim",
    keys = {
        { "<leader>uN", ":ASToggle<CR>", desc = "Toggle auto-save" },
    },
    cmd = "ASToggle",
    event = { "InsertLeave", "TextChanged" },
    opts = {
        execution_message = {
            enabled = false,
        },
    },
}
