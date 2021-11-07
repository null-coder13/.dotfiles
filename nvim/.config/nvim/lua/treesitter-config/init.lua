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
  ensure_installed = {"html", "javascript", "lua", "python", "vim", "json", "bash"},
  highlight = {
    enable = false,      
    additional_vim_regex_highlighting = false,
  },
  autotag = { -- need more stuff for lsp
    enable = true,
  },
  autopairs = {
    enable = true
  }
}
