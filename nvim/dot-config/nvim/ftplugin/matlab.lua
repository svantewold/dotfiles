vim.treesitter.start()
vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr"
vim.keymap.set('n', '<C-t>', ':MatlabTerminal<CR>')
