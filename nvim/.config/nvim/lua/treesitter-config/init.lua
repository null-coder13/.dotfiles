require'nvim-treesitter.configs'.setup {
  ensure_installed = {"html", "javascript", "lua", "python", "vim", "json", "bash"},
  highlight = {
    enable = true,      
    additional_vim_regex_highlighting = false,
  },
  autotag = { -- need more stuff for lsp
    enable = true,
  },
  autopairs = {
    enable = true
  }
}
