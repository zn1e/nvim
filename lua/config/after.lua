-- telescope mappings after loading plugins
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- gruvbox-baby config
vim.g.gruvbox_baby_function_style = "NONE"
vim.g.gruvbox_baby_keyword_style = "italic"

local colors = require("gruvbox-baby.colors").config()
vim.g.gruvbox_baby_highlights = {Normal = {fg = "#ebdbb2", bg = "NONE", style="underline"}}

vim.g.gruvbox_baby_telescope_theme = 1

vim.g.gruvbox_baby_transparent_mode = 1

vim.cmd[[colorscheme gruvbox-baby]]

-- undo tree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- file-sytem
vim.keymap.set("n", "<leader>e", ":Oil<CR>", { desc = "Explorer (Oil)", remap = true })
