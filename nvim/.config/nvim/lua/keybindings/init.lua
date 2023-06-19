vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap

-- Yank to the end of a line
map('n', 'Y', 'yg_', {noremap = true, silent = false})

-- Cursor centered on screen after search
map('n', 'n', 'nzzzv', {noremap = true, silent = false})
map('n', 'N', 'Nzzzv', {noremap = true, silent = false})
map('n', 'J', "mzJ'z", {noremap = true, silent = false})

 
-- Better navigation between buffers
map('n', '<A-C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<A-C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<A-C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<A-C-k>', '<C-w>k', {noremap = true, silent = false})

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

map('n', "<leader>e", ":NvimTreeToggle<cr>", {noremap = true, silent = false})
map('n', "<leader>x", ":bdelete<cr>", {noremap = true, silent = false})

-- Dap keymaps
vim.keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<F10>", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<F11>", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<F12>", ":lua require'dap'.step_out()<CR>")
vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set("n", "<leader>lp", ":require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
vim.keymap.set("n", "<leader>dl", ":lua require'dap'.run_last()<CR>")
vim.keymap.set("n", "<leader>dt", ":lua require'dap'.terminate()<CR>")

vim.keymap.set("i", "<C-n>", "<cmd>lua require'luasnip'.jump(1)<CR>", { noremap= true, silent= true })
vim.keymap.set("s", "<C-n>", "<cmd>lua require'luasnip'.jump(1)<CR>", { noremap= true, silent= true })
vim.keymap.set("i", "<C-p>", "<cmd>lua require'luasnip'.jump(-1)<CR>", { noremap= true, silent= true })
vim.keymap.set("s", "<C-p>", "<cmd>lua require'luasnip'.jump(-1)<CR>", { noremap= true, silent= true })
