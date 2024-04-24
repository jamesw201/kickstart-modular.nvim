return {
  'kdheepak/lazygit.nvim',
  version = '*',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('lazy').setup {
      {
        'kdheepak/lazygit.nvim',
        -- optional for floating window border decoration
        dependencies = {
          'nvim-lua/plenary.nvim',
        },
        require('telescope').load_extension 'lazygit',
      },
    }
  end,
}
