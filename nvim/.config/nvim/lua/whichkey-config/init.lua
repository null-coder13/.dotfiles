local wk = require("which-key")
local mappings = {
  f = {
    name = "+file",
    f = {"<cmd>Telescope find_files<cr>", "Find file"},
    r = {"<cmd>Telescope oldfiles<cr>", "Open Recent File"},
    g = {"<cmd>Telescope live_grep<cr>", "Grep"},
    b = {"<cmd>Telescope buffers<cr>", "Buffers"},
    h = {"<cmd>Telescope help_tags<cr>", "Help Tags"},
  },
  g = {
    name = "+git",
    s = {":G<cr>", "status"},
    c = {":G commit<cr>", "commit"},
    p = {":G push<cr>", "push"},
    l = {":G pull<cr>", "pull"},
    b = {":G branch<cr>", "branch"},
    w = {":GBrowse<cr>", "Go to Github"},
    m = {":G mergetool<cr>", "mergetool"},
    m = {":G difftool<cr>", "difftool"},
  },
  c = {
    name = "+onedark",
    s = "Change theme"
  },
  l = {
        name = "LSP",
        i = {":LspInfo<cr>", "Connected Language Servers"},
--        A = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', "Add workspace folder"},
--        R = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', "Remove workspace folder"},
--        l = {'<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', "List workspace folder"},
--        D = {'<cmd>lua vim.lsp.buf.type_definition()<CR>', "Type definition"},
        r = {'<cmd>lua vim.lsp.buf.rename()<CR>', "Rename"},
        a = {'<cmd>lua vim.lsp.buf.code_action()<CR>', "Code actions"},
        e = {'<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', "Show line diagnostics"},
--        q = {'<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', "Show loclist"}
  },
  q = "Quickscope toggle",
  t = "Taskwarrior",
  w = "Vimwiki"
}
local opts = {
  prefix = '<leader>'
}
wk.register(mappings, opts)
