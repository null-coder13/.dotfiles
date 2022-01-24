vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        underline = true,
        virtual_text = {
            spacing = 5,
            severity_limit = 'Warning',
        },
        update_in_insert = true,
    }
)
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  sync_install = false,
  highlight = {
    enable = true,      
    disable = {"html", "css"},
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true, disable = {""}},
  autotag = { -- need more stuff for lsp
    enable = true,
  },
  autopairs = {
    enable = true
  },
  context_commentstring = {
    enable = true
  },
}
