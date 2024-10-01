return {
  {
    'stevearc/dressing.nvim',
    event = 'VeryLazy',
    opts = {},
  },
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    event = 'BufReadPost',
    config = function()
      vim.keymap.set('n', '[x', '<cmd>BufferLineCloseLeft', { desc = 'Close buffers on the Left' })
      vim.keymap.set('n', ']x', '<cmd>BufferLineCloseRight', { desc = 'Close buffers one the Right' })
      require('bufferline').setup {
        options = {
          diagnostics = 'nvim_lsp',
          offsets = {
            {
              filetype = 'neo-tree',
              text = 'File Explorer',
              text_align = 'center',
              separator = true,
            },
          },
        },
      }
    end,
  },
  {
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
  },
}
