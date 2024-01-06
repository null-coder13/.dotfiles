-- vim.cmd('filetype plugin indent on')
-- vim.o.shortmess = vim.o.shortmess .. 'c'
-- vim.o.hidden = true
-- vim.o.whichwrap = 'b,s,<,>,[,],h,l'
-- vim.o.pumheight = 10
-- vim.o.fileencoding = 'utf-8'
-- vim.o.cmdheight = 2
-- vim.o.splitbelow = true
-- vim.o.splitright = true
-- vim.opt.termguicolors = true
-- vim.o.conceallevel = 0
-- vim.o.showtabline = 2
-- vim.o.showmode = false
-- vim.o.backup = false
-- vim.o.writebackup = false
-- vim.o.updatetime = 300
-- vim.o.timeoutlen = 100
-- vim.o.clipboard = "unnamedplus"
-- vim.o.hlsearch = false
-- vim.o.ignorecase = true
-- vim.o.scrolloff = 8
-- vim.o.sidescrolloff = 8
-- vim.opt.undofile = true
-- vim.o.mouse = "a"
-- vim.o.cursorline = true
-- vim.o.tabstop = 4
-- vim.bo.tabstop = 4
-- -- vim.o.softtabstop = 2
-- vim.o.shiftwidth = 4
-- vim.bo.shiftwidth = 4
-- vim.o.autoindent = true
-- vim.bo.autoindent = true
-- vim.opt.expandtab = true
-- -- vim.bo.expandtab = true
-- vim.wo.wrap = false
-- -- vim.wo.number = true
-- vim.wo.relativenumber = true
-- vim.wo.signcolumn = "yes"
-- vim.opt.swapfile = false
-- vim.opt.modifiable = true

local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false
