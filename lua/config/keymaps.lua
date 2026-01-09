local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- terminal mappings
keymap('t', '<Esc>', [[<C-\><C-n>]], opts)

