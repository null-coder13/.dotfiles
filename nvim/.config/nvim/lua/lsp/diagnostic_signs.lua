local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

--vim.fn.sign_define("DiagnosticSignError",
--    {text = "", texthl = "GruvboxRed"})
--vim.fn.sign_define("DiagnosticSignWarning",
--    {text = "", texthl = "GruvboxYellow"})
--vim.fn.sign_define("DiagnosticSignInformation",
--    {text = "", texthl = "GruvboxBlue"})
--vim.fn.sign_define("DiagnosticSignHint",
--    {text = "", texthl = "GruvboxAqua"})
