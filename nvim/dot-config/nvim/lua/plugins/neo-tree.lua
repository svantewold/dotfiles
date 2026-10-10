return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  config = function()
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem toggle left<CR>')
    require("nvim-web-devicons").setup({
      override_by_extension = {
        ["m"] = {
          icon = "",
          color = "#FF7518",
          cterm_color = "111",
          name = "ObjectiveC"
        }
      },
    })
  end
}
