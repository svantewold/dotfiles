return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>tye", function() require("custom.tinymist_export").pick() end, desc = "Tinymist export tool" },
  },
}
