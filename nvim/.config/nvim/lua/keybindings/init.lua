vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap

-- Yank to the end of a line
map('n', 'Y', 'yg_', {noremap = true, silent = false})

-- Cursor centered on screen after search
map('n', 'n', 'nzzzv', {noremap = true, silent = false})
map('n', 'N', 'Nzzzv', {noremap = true, silent = false})
map('n', 'J', "mzJ'z", {noremap = true, silent = false})

 
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

-- Visual Block moving text
map('v', '<A-j>', ":m '>+1<CR>gv=gv", {noremap = true, silent = false})
map('v', '<A-k>', ":m '<-2<CR>gv=gv", {noremap = true, silent = false})

-- Quickscope
map('n', '<leader>q', ':QuickScopeToggle<cr>', {noremap = true, silent = false})
map('x', '<leader>q', ':QuickScopeToggle<cr>', {noremap = true, silent = false})

map('n', "<leader>e", ":Lex 30<cr>", {noremap = true, silent = false})
