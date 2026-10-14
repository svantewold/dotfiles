-- R console
vim.api.nvim_create_user_command('RTerminal', 'silent !tmux splitw -d -l 13 R', {})

-- Matlab console
vim.api.nvim_create_user_command('MatlabTerminal', 'silent !tmux splitw -d -l 13 "matlab -nodesktop -nojvm"', {})

-- Terminal
vim.api.nvim_create_user_command('Term', 'silent !tmux splitw -d -l 13', {})
