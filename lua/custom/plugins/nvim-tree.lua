return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('nvim-tree').setup {
      sort_by = 'case_sensitive',
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,
      },
      update_focused_file = {
        enable = true,
      },
    }

    -- vim.keymap.set('n', '<c-n>', ':NvimTreeFindFile<CR>')
    vim.api.nvim_set_keymap('n', '<C-n>', '<cmd>NvimTreeFindFileToggle<CR>', { noremap = true })
  end,
}
