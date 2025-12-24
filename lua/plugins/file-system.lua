return {
  'stevearc/oil.nvim',
  opts = {
	  columns = { "icon" },
	  keymaps = {
		  ["<esc>"] = "actions.close",
	  },
	  win_options = { signcolumn = "auto" },
	  lsp_file_methods = { autosave_changes = true },
	  view_options = { show_hidden = true }
  },
  dependencies = { "nvim-tree/nvim-web-devicons", opts = true },
  lazy = false,
}
