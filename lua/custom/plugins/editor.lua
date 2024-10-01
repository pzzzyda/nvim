return {
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
}
