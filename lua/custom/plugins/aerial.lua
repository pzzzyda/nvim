return {
  'stevearc/aerial.nvim',
  -- Optional dependencies
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },
  keys = {
    { '<leader>o', '<cmd>AerialToggle!<CR>', desc = '[O]utline' },
  },
  opts = {
    backends = { 'lsp' },
    filter_kind = {
      'Array',
      'Boolean',
      'Class',
      'Constant',
      'Constructor',
      'Enum',
      'EnumMember',
      'Event',
      'Field',
      'File',
      'Function',
      'Interface',
      'Key',
      'Method',
      'Module',
      'Namespace',
      'Null',
      'Number',
      'Object',
      'Operator',
      'Package',
      'Property',
      'String',
      'Struct',
      'TypeParameter',
      'Variable',
    },
  },
}