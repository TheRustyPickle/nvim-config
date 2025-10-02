return {
    "dmtrKovalenko/fff.nvim",
    build = "cargo build --release",
    opts = {
        max_threads = 8,
        prompt = ">> ",
        layout = {
            height = 0.8,
            width = 0.8,
            prompt_position = "top",
            preview_position = "right",
            preview_size = 0.5,
        },
    },
}
