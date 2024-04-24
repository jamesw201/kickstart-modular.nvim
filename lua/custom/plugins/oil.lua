return {
  'stevearc/oil.nvim',
  version = '*',
  config = function()
    require('oil').setup()
    vim.keymap.set('n', '-', require('oil').open, { desc = 'Open parent directory' })
  end,
}
