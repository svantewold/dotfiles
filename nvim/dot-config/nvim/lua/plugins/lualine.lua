local function wordcount()
  if vim.bo.filetype == 'typst' then
    return "Words: " .. vim.fn.wordcount().words
  end
end

local function is_prose()
  return vim.bo.filetype == "markdown" or vim.bo.filetype == "text" or vim.bo.filetype == "typst"
end

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        theme = 'dracula'
      },
      sections = {
        lualine_c = { 'filename', { wordcount, cond = is_prose } }
      }
    })
  end
}
