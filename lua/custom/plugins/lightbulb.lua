return {
  'kosayoda/nvim-lightbulb',
  event = 'VeryLazy',
  opts = {
    -- Autocmd configuration.
    -- If enabled, automatically defines an autocmd to show the lightbulb.
    -- If disabled, you will have to manually call |NvimLightbulb.update_lightbulb|.
    -- Only works if configured during NvimLightbulb.setup
    autocmd = {
      -- Whether or not to enable autocmd creation.
      enabled = true,
      -- See |updatetime|.
      -- Set to a negative value to avoid setting the updatetime.
      updatetime = 200,
      -- See |nvim_create_autocmd|.
      events = { 'CursorHold', 'CursorHoldI' },
      -- See |nvim_create_autocmd| and |autocmd-pattern|.
      pattern = { '*' },
    },
    -- Configuration for various handlers:
    -- 1. Sign column.
    sign = {
      enabled = true,
      -- Text to show in the sign column.
      -- Must be between 1-2 characters.
      text = ' ',
      -- Highlight group to highlight the sign column text.
      hl = 'LightBulbSign',
    },
  },
}
