return {
    "nvim-telescope/telescope.nvim",
    branch = '0.1.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        'nvim-telescope/telescope-media-files.nvim',
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local telescope = require('telescope')
        local actions = require("telescope.actions")

        telescope.setup({
            extensions = {
                fzf = {
                    fuzzy = true,                    -- false will only do exact matching
                    override_generic_sorter = true,  -- override the generic sorter
                    override_file_sorter = true,     -- override the file sorter
                    case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                    -- the default case_mode is "smart_case"
                }
            },
            defaults = {
                file_ignore_patterns = {"node_modules"},
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                        ["<C-j>"] = actions.move_selection_next, -- move to next result
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                    }
                }
            },
        })
        
        telescope.load_extension('fzf')
        telescope.load_extension('media_files')

        -- keymaps
        local keymap = vim.keymap

        keymap.set('n', '<leader>sf', "<cmd>Telescope find_files<cr>", { desc = "Find files" })
        keymap.set('n', '<leader>sr', "<cmd>Telescope oldfiles<cr>", { desc = "Find recent file" })
        keymap.set('n', '<leader>sg', "<cmd>Telescope live_grep<cr>", { desc = "Grep search" })
        keymap.set('n', '<leader>sb', "<cmd>Telescope buffers<cr>", { desc = "Search current buffers" })
        keymap.set('n', '<leader>sh', "<cmd>Telescope help_tags<cr>", { desc = "Search help" })
        keymap.set('n', '<leader>sm', "<cmd>Telescope media_files<cr>", { desc = "Search media files" })
        keymap.set('n', '<leader>sd', "<cmd>Telescope diagnostics<cr>", { desc = "Search diagnostics" })
        keymap.set('n', '<leader>sd', "<cmd>Telescope keymaps<cr>", { desc = "Search keymaps" })

    end



}

