return {
  "akinsho/toggleterm.nvim",
  version = "*",
  keys = {
    { "<leader>tt", ":ToggleTerm<CR>", desc = "Toggle terminal", silent = true },
    { "<leader>tf", ":ToggleTerm direction=float<CR>", desc = "Toggle float terminal", silent = true },
  },
  opts = {},
}
