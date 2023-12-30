
local HOME = os.getenv "HOME"
local DEBUGGER_LOCATION = "/usr/local/netcoredbg"

  local dap = require "dap"

  -- Adapter configuration
  dap.adapters.coreclr = {
    type = "executable",
    command = DEBUGGER_LOCATION,
    args = { "--interpreter=vscode" },
  }

  -- Configuration
  dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        return vim.fn.input('Path to DLL > ', vim.fn.getcwd(), 'file')
    end,
  },
}


