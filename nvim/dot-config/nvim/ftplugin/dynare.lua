vim.opt_local.commentstring = "// %s"
vim.bo.expandtab = true
vim.bo.shiftwidth = 4

local function highlight_comments()
  vim.fn.clearmatches()
  vim.fn.matchadd("Comment", "//.*$")
  vim.fn.matchadd("Comment", "/\\*\\_.\\{-}\\*/")
end

vim.api.nvim_create_autocmd({ "BufWinEnter", "TextChanged", "TextChangedI" }, {
  buffer = 0,
  callback = highlight_comments,
})
