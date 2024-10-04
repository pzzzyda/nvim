return {
  'nvim-lualine/lualine.nvim',
  event = 'VeryLazy',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    options = {
      globalstatus = true,
    },
    sections = {
      lualine_b = {
        'branch',
        'diff',
        {
          'diagnostics',
          symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
        },
      },
    },
  },
}
