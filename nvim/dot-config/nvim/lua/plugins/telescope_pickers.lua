return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>tye", function() require("custom.tinymist_export").pick(require("telescope.themes").get_dropdown {}) end, desc = "Tinymist export tool" },
  },
}
