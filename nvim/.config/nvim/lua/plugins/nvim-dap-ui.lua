return {
  "rcarriga/nvim-dap-ui",
  dependencies = {
    "mfussenegger/nvim-dap"
  },
  config = function()
    vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})


    local keymap = vim.keymap

    keymap.set('n', '<leader>dt', ":DapUiToggle<cr>", { desc = "Toggle Debugger UI" })
    keymap.set('n', '<leader>db', ":DapToggleBreakpoint<cr>", { desc = "Toggle Breakpoint" })
    keymap.set('n', '<leader>dc', ":DapContinue<cr>", { desc = "Debugger Continue" })
    keymap.set('n', '<leader>dr', "<cmd>lua require('dapui').open({reset = true})<cr>", { desc = "Reset Debugger" })
  end

}
