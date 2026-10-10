return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').install(
      {
        "bash", "bibtex", "c", "git_config", "json",
        "lua", "markdown", "matlab", "python", "r",
        "toml", "typst", "yaml"
      }
    )
  end
}
