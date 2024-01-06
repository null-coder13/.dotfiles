local on_attach = function(_, bufnr)
    local bufmap = function(keys, func)
        vim.keymap.set('n', keys, func, { buffer = bufnr })
    end

    bufmap('<leader>r', vim.lsp.buf.rename)
    bufmap('<leader>a', vim.lsp.buf.code_action)

    bufmap('gd', vim.lsp.buf.definition)
    bufmap('gD', vim.lsp.buf.declaration)
    bufmap('gI', vim.lsp.buf.implementation)
    bufmap('<leader>D', vim.lsp.buf.type_definition)

    bufmap('gr', require('telescope.builtin').lsp_references)
    bufmap('<leader>s', require('telescope.builtin').lsp_document_symbols)
    bufmap('<leader>S', require('telescope.builtin').lsp_dynamic_workspace_symbols)
    bufmap('<leader>dw', require('telescope.builtin').diagnostics)
    bufmap('<leader>df', "<cmd>lua require('telescope.builtin').diagnostics({bufnr=0})<CR>")
    bufmap('<leader>di', vim.diagnostic.open_float)

    bufmap('K', vim.lsp.buf.hover)

    vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
        vim.lsp.buf.format()
    end, {})
end

M = {}
M.setup = function()
    local signs = {
        { name = "DiagnosticSignError", text = "" },
        { name = "DiagnosticSignWarn", text = "" },
        { name = "DiagnosticSignHint", text = "" },
        { name = "DiagnosticSignInfo", text = "" },
    }

    for _, sign in ipairs(signs) do
        vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
    end

    local config = {
        -- disable virtual text
        virtual_text = false,
        -- show signs
        signs = {
            active = signs,
        },
        update_in_insert = true,
        underline = true,
        severity_sort = true,
        float = {
            focusable = false,
            style = "minimal",
            border = "rounded",
            source = "always",
            header = "",
            prefix = "",
        },
    }

    vim.diagnostic.config(config)

    -- vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    --   border = "rounded",
    -- })
    --
    -- vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    --   border = "rounded",
    -- })
end

M.setup()

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- mason
require("mason").setup()
require("mason-lspconfig").setup_handlers({

    function(server_name)
        require("lspconfig")[server_name].setup {
            on_attach = on_attach,
            capabilities = capabilities
        }
    end,

    ["lua_ls"] = function()
        require('neodev').setup()
        require('lspconfig').lua_ls.setup {
            on_attach = on_attach,
            capabilities = capabilities,
            Lua = {
                workspace = { checkThirdParty = false },
                telemetry = { enable = false },
            },
        }
    end,

    ['omnisharp'] = function()
        require("lspconfig").omnisharp.setup {
            on_attach = on_attach,
            capabilities = capabilities,
            cmd = {"/home/tom/.local/share/nvim/mason/packages/omnisharp/omnisharp"}
        }
    end,

    ['pyright'] = function()
        require("lspconfig").pyright.setup {}
    end,

    ['tsserver'] = function()
        require("lspconfig").tsserver.setup {
            on_attach = on_attach,
            capabilities = capabilities
        }
    end,

    ['cssls'] = function()
        require("lspconfig").cssls.setup {
            on_attach = on_attach,
            capabilities = capabilities
        }
    end,

    ['angularls'] = function()
        local util = require("lspconfig.util")
        require("lspconfig").angularls.setup {
            on_attach = on_attach,
            capabilities = capabilities,
            root_dir = util.root_pattern("angular.json", "project.json")
        }
    end,

    ['emmet_ls'] = function()
        require("lspconfig").emmet_ls.setup {
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
    end,

    ['rust_analyzer'] = function()
        require('lspconfig').rust_analyzer.setup {
            on_attach = on_attach,
            capabilities = capabilities,
        }
    end,

})
