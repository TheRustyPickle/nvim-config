return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = true,
  keys = {
    {
      "<leader>uh",
      "<cmd>ToggleTerm size=10 direction=horizontal<cr>",
      desc = "Open a horizontal terminal at the Desktop directory",
    },
  },
  opts = {
    shade_terminals = false,
  },
}
