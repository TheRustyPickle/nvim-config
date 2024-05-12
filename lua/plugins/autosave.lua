return {
  "okuuva/auto-save.nvim",
  keys = {
    { "<leader>uN", ":ASToggle<CR>", desc = "Toggle auto-save" },
  },
  cmd = "ASToggle", -- optional for lazy loading on command
  event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
  opts = {
    -- your config goes here
    -- or just leave it empty :)
  },
}
