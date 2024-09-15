-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        no_italic = true,
      }
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    event = 'VeryLazy',
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
    'navarasu/onedark.nvim',
    lazy = true,
    priority = 1000,
    config = function()
      require('onedark').setup {
        code_style = {
          comments = 'none',
          keywords = 'none',
          functions = 'none',
          strings = 'none',
          variables = 'none',
        },
      }
      vim.cmd.colorscheme 'onedark'
    end,
  },
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    keys = {
      { '<leader>tt', '<cmd>ToggleTerm<CR>', desc = '[T]oggle [T]erminal' },
    },
    opts = {
      direction = 'float',
    },
  },
  {
    'stevearc/aerial.nvim',
    opts = {},
    keys = {
      { '<leader>o', '<cmd>AerialToggle!<CR>', desc = '[O]utline' },
    },
    -- Optional dependencies
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },
  },
  {
    'stevearc/dressing.nvim',
    event = 'VeryLazy',
    opts = {},
  },
  {
    'nvim-pack/nvim-spectre',
    keys = {
      {
        '<leader>rp',
        function()
          require('spectre').open_file_search { select_word = true }
        end,
        desc = '[R]e[p]lace in multiple files',
      },
    },
  },
}
