return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require('nvim-web-devicons').setup {
      override_by_extension = {
        [".m"] = {
          icon = "",
          color = "#CC5500",
          name = "matlab"
        }
      }
    }
  end
}
