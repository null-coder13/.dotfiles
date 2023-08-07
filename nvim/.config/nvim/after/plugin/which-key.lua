local wk = require("which-key")
local mappings = {
  s = {
    name = "+search",
    f = {"<cmd>Telescope find_files<cr>", "Find file"},
    r = {"<cmd>Telescope oldfiles<cr>", "Open Recent File"},
    g = {"<cmd>Telescope live_grep<cr>", "Grep"},
    b = {"<cmd>Telescope buffers<cr>", "Buffers"},
    h = {"<cmd>Telescope help_tags<cr>", "Help Tags"},
    m = {"<cmd>Telescope media_files<cr>", "Media Files"},
    d = {"<cmd>Telescope diagnostics<cr>", "Diagnostics"}
  },
  g = {
    name = "+git",
    s = {":G<cr>", "status"},
    c = {":G commit<cr>", "commit"},
    p = {":G push<cr>", "push"},
    l = {":G pull<cr>", "pull"},
    b = {":G branch<cr>", "branch"},
    w = {":GBrowse<cr>", "Go to Github"},
    d = {":G mergetool<cr>", "mergetool"},
    m = {":G difftool<cr>", "difftool"},
  },
  l = {
        name = "LSP",
        i = {":LspInfo<cr>", "Connected Language Servers"},
        r = {'<cmd>lua vim.lsp.buf.rename()<CR>', "Rename"},
        a = {'<cmd>lua vim.lsp.buf.code_action()<CR>', "Code actions"},
        e = {'<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', "Show line diagnostics"},
        f = {':Format<CR>', "Format"}
  },
  e = "Explorer",
  x = "Close Buffer",
  d = {
    name = "Diagnostics/Debug",
    n = "Next",
    p = "Previous",
    l = "List All",
    t = "Terminate debug"
  },
  b = "Toggle breakpoint",
  B = "Breakpoint condition"
}
local opts = {
  prefix = '<leader>'
}
wk.register(mappings, opts)
