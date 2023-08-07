require('nvim-treesitter.configs').setup {
    ensure_installed = { 'c', 'query', 'vim', 'vimdoc', 'lua', 'html', 'css', 'json', 'typescript', 'rust' },

    auto_install = false,

    highlight = { enable = true, disable= { "html", "css" } },

    indent = { enable = true },

    autopairs = {
      enable = true
    },
    autotag = {
      enable = true,
    },
}
