return {
  "mfussenegger/nvim-dap",
  opts = {},
  config = function ()
    local dap = require("dap")
    local dapui = require("dapui")

    local DEBUGGER_LOCATION = "/usr/local/netcoredbg"

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

    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
      dap.clear_breakpoints()
      dap.repl.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end

  end
}
