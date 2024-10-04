return {
  'akinsho/bufferline.nvim',
  event = 'BufReadPost',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    vim.keymap.set('n', '[x', '<cmd>BufferLineCloseLeft<CR>', { desc = 'Close buffers on the Left' })
    vim.keymap.set('n', ']x', '<cmd>BufferLineCloseRight<CR>', { desc = 'Close buffers one the Right' })
    require('bufferline').setup {
      options = {
        diagnostics = 'nvim_lsp',
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'File Explorer',
            text_align = 'left',
            separator = true,
          },
        },
      },
    }
  end,
}
