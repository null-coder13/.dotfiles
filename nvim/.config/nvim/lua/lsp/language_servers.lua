---- Setup lspconfig.
--require'lspconfig'.pyright.setup {
--  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
--}
--
--require'lspconfig'.cssls.setup {
--  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
--}
--
--require'lspconfig'.tsserver.setup {
--  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
--}
--
--require'lspconfig'.html.setup {
--  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
--}

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig.configs'.ls_emmet = {
  default_config = {
    cmd = {'ls_emmet', '--stdio'},
    filetypes = {'html', 'css', 'scss', 'jsx', 'javascriptreact', 'js'}, -- Add the languages you use, see language support
    root_dir = function(_)
      return vim.loop.cwd()
    end,
    settings = {}
  }
}

local langservers = {'html', 'cssls', 'pyright', 'ls_emmet', 'tsserver'}

for _, server in ipairs(langservers) do
  require'lspconfig'[server].setup {capabilities = capabilities}
end
