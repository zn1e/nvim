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

-- basic mappings
keymap("n", "Y", "y$", opts) -- copy to end of line
keymap("n", "H", "^", opts) -- move to beginning of line
keymap("n", "L", "$", opts) -- move to end of line
keymap("n", "W", ":w<CR>", opts) -- save current buffer
keymap("n", "Q", ":q<CR>", opts) -- quit current buffer

-- terminal mappings
keymap('t', '<Esc>', [[<C-\><C-n>]], opts)

-- move selected lines (up | down) & (left | right) indentation
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)
keymap("v", ">", ">gv", opts)
keymap("v", "<", "<gv", opts)

-- line join and navigation half-page
keymap("n", "J", "mzJ`z", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- replace highlighted word while retaining original yanked word
keymap("x", "<leader>p", "\"_dP", opts)

-- tmux mappings
keymap('n', '<C-h>', '<cmd>lua require("tmux").move_left()<CR>', opts)
keymap('n', '<C-l>', '<cmd>lua require("tmux").move_right()<CR>', opts)
keymap('n', '<C-k>', '<cmd>lua require("tmux").move_top()<CR>', opts)
keymap('n', '<C-j>', '<cmd>lua require("tmux").move_bottom()<CR>', opts)
keymap('t', '<C-h>', '<cmd>lua require("tmux").move_left()<CR>', opts)
keymap('t', '<C-l>', '<cmd>lua require("tmux").move_right()<CR>', opts)
keymap('t', '<C-k>', '<cmd>lua require("tmux").move_top()<CR>', opts)
keymap('t', '<C-j>', '<cmd>lua require("tmux").move_bottom()<CR>', opts)

keymap('n', '<leader>q', ':lua toggle_quickfix()<CR>', { silent = true })

-- vertical split
keymap("n", "<leader>vs", ":vsplit<CR>", opts)

-- rust related
keymap("n", "<leader>cc", ":vsplit<CR>:terminal cargo check<CR>", opts)
keymap("n", "<leader>cb", ":vsplit<CR>:terminal cargo build --release<CR>", opts)
keymap("n", "<leader>cr", ":vsplit<CR>:terminal cargo run <CR>", opts)
keymap("n", "<leader>ct", ":vsplit<CR>:terminal cargo test<CR>", opts)

