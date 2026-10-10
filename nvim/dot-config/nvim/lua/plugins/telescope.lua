return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make'
    },
  },
  config = function()
    local builtin = require("telescope.builtin")
    require('telescope').setup({
      pickers = {
        find_files = {
          theme = "ivy",
        }
      }
    })
    vim.keymap.set('n', '<C-p>', builtin.find_files, {})
  end
}
