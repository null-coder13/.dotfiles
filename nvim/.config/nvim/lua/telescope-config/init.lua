local actions = require('telescope.actions')
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    }
  },
  defaults = {
    file_ignore_patterns = {"node_modules"},
  },
  
}
require('telescope').load_extension('fzf')
require('telescope').load_extension('media_files')

