return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
	    -- disable netrw at the very start of your init.lua
	    vim.g.loaded_netrw = 1
	    vim.g.loaded_netrwPlugin = 1

	    -- set termguicolors to enable highlight groups
	    vim.opt.termguicolors = true

	    -- OR setup with some options
	    require("nvim-tree").setup({
		    sort = {
			    sorter = "case_sensitive",
		    },
		    view = {
			    width = 30,
		    },
		    renderer = {
			    group_empty = true,
		    },
		    filters = {
			    dotfiles = true,
		    },
        actions = {
          open_file = {
            quit_on_open = true
          }
        }
	    })
	    local keymap = vim.keymap

	    keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { desc = "Toggle file explorer"})
    end,
}
