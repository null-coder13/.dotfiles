require('nvim-treesitter.configs').setup {
    ensure_installed = { 'c', 'query', 'vim', 'vimdoc', 'lua', 'html', 'css', 'json', 'typescript', 'rust', 'help' },

    auto_install = true,

    highlight = { enable = true, disable = { "html", "css" } },

    indent = { enable = true },

    autopairs = {
        enable = true
    },
    autotag = {
        enable = true,
    },

    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = '<c-space>',
            node_incremental = '<c-space>',
            scope_incremental = '<c-s>',
            node_decremental = '<c-backspace>',
        },
    },
}
