require("bufferline").setup{}
vim.cmd[[
nnoremap <silent><S-l> :BufferLineCycleNext<CR>
nnoremap <silent><S-h> :BufferLineCyclePrev<CR>
]]
