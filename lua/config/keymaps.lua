local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "

_G.toggle_quickfix = function ()
  if not vim.tbl_isempty(vim.fn.getwininfo()) and vim.bo.buftype == "quickfix" then
    vim.cmd("cclose")
  else
    vim.cmd("copen")
  end
end

-- terminal mappings
keymap('t', '<Esc>', [[<C-\><C-n>]], opts)

keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

keymap("n", "J", "mzJ`z", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

keymap("x", "<leader>p", "\"_dP", opts)

keymap('n', '<C-h>', '<cmd>lua require("tmux").move_left()<CR>', opts)
keymap('n', '<C-l>', '<cmd>lua require("tmux").move_right()<CR>', opts)
keymap('n', '<C-k>', '<cmd>lua require("tmux").move_top()<CR>', opts)
keymap('n', '<C-j>', '<cmd>lua require("tmux").move_bottom()<CR>', opts)
keymap('t', '<C-h>', '<cmd>lua require("tmux").move_left()<CR>', opts)
keymap('t', '<C-l>', '<cmd>lua require("tmux").move_right()<CR>', opts)
keymap('t', '<C-k>', '<cmd>lua require("tmux").move_top()<CR>', opts)
keymap('t', '<C-j>', '<cmd>lua require("tmux").move_bottom()<CR>', opts)

keymap('n', '<leader>q', ':lua toggle_quickfix()<CR>', { silent = true })
