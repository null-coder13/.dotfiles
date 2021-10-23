vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap

-- Better navigation between buffers
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

-- Remap ESC
map('i', 'jk', '<ESC>', {noremap = true, silent = false})
map('i', 'kj', '<ESC>', {noremap = true, silent = false})

-- Better indent
map('v', '<', '<gv', {noremap = true, silent = false})
map('v', '>', '>gv', {noremap = true, silent = false})

-- Quickscope
map('n', '<leader>q', ':QuickScopeToggle<cr>', {noremap = true, silent = false})
map('x', '<leader>q', ':QuickScopeToggle<cr>', {noremap = true, silent = false})

