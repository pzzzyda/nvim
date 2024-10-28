return {
  'goolord/alpha-nvim',
  event = 'VimEnter',
  config = function()
    local dashboard = require 'alpha.themes.dashboard'
    local button = dashboard.button

    dashboard.leader = 'LDR'

    dashboard.section.header.val = {
      [[███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
      [[████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
      [[██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
      [[██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
      [[██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
      [[╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
      [[]],
      [[]],
    }

    dashboard.section.buttons.val = {
      button('e', '  New file', '<cmd>ene <CR>'),
      button('LDR s f', '  Search files', '<cmd>Telescope find_files<CR>'),
      button('LDR s .', '  Recent Files', '<cmd>Telescope oldfiles<CR>'),
      button('LDR s g', '  Search by grep', '<cmd>Telescope live_grep<CR>'),
      button('c', '  Config', '<cmd>cd ~/.config/nvim | Telescope find_files<CR>'),
      button('l', '󰒲  Lazy', '<cmd>Lazy<CR>'),
      button('q', '  Quit', '<cmd>qa<CR>'),
    }

    require('alpha').setup(dashboard.config)
  end,
}
