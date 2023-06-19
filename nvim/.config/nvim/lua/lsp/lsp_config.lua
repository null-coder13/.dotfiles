require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "sumneko_lua" }
})

-- Setup desired languages here
require("lspconfig").sumneko_lua.setup{
  settings = {
      Lua = {
        diagnostics = {
          -- Get the language server to recognize the `vim` global
          globals = { 'vim' },
        },
      },
    },
}

local capabilities = require("lsp.handlers").capabilities
local on_attach = require("lsp.handlers").on_attach

require("lspconfig").omnisharp.setup{
  on_attach = on_attach,
  capabilities = capabilities
}
require("lspconfig").pyright.setup{}
require("lspconfig").tsserver.setup{
  on_attach = on_attach,
  capabilities = capabilities
}
require("lspconfig").cssls.setup{
  on_attach = on_attach,
  capabilities = capabilities
}
require("lspconfig").angularls.setup{
    on_attach = on_attach,
    capabilities = capabilities
}
require("lspconfig").emmet_ls.setup{
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' },
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          ["bem.enabled"] = true,
        },
      },
    }
}
require('lspconfig').rust_analyzer.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}
