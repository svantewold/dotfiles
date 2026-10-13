vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.title = true
vim.o.clipboard = "unnamedplus"
vim.g.mapleader = " "
vim.opt.winborder = "rounded"

-- Autocompletions
vim.o.autocomplete = true
vim.o.pumheight = 8
vim.o.pumborder = "rounded"

vim.opt.complete:append('o')
vim.opt.completeopt = { 'menuone', 'noselect', 'fuzzy' }
vim.opt.winborder = "rounded"

vim.keymap.set('n', '<leader>p', ':TypstPreviewToggle<CR>')
