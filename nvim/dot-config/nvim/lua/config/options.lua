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

-- Custom commands
vim.api.nvim_create_user_command('TypstCompile', 'silent !typst c "%"', {})
vim.api.nvim_create_user_command('WordCount', 'lua print(vim.fn.wordcount().words)', {})

-- Keymaps
vim.keymap.set('n', '<leader>typ', ':TypstPreviewToggle<CR>')
vim.keymap.set('n', '<leader>tyc', ':TypstCompile<CR>')
vim.keymap.set('n', '<leader>wc', ':WordCount<CR>')
