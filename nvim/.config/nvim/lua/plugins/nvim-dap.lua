return {
  "mfussenegger/nvim-dap",
  opts = {},
  config = function ()
    local dap = require("dap")
    local dapui = require("dapui")
    dapui.setup()

    -- Adapter configuration
    dap.adapters.coreclr = {
      type = "executable",
      command = vim.fn.stdpath('data')..'/mason/bin/netcoredbg',
      args = { "--interpreter=vscode" },
    }

    -- Configuration
    dap.configurations.cs = {
      {
        type = "coreclr",
        name = "launch - netcoredbg",
        request = "launch",
        program = function()
          return vim.fn.input('Path to DLL > ', vim.fn.getcwd() .. '/bin/Debug/', 'file')
        end,
      },
    }

    dap.listeners.after.event_initialized["dapui_config"] = function()
      print("Opening DAP UI")
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      print("Closing DAP UI")
      dapui.close()
      dap.clear_breakpoints()
      dap.repl.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      print("Closing DAP UI")
      dapui.close()
    end

    local keymap = vim.keymap

    keymap.set('n', '<F5>', ":DapContinue<cr>", { desc = "Dap Continue" })
    keymap.set('n', '<F10>', ":DapStepOver<cr>", { desc = "Step Over" })
    keymap.set('n', '<F11>', ":DapStepInto<cr>", { desc = "Step Into" })
    keymap.set('n', '<F12>', ":DapStepOut<cr>", { desc = "Step Out" })

  end
}
