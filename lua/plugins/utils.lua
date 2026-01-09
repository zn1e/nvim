return {
    {
        "mbbill/undotree",
    },
    {
        "tpope/vim-fugitive"
    },
    {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
	},
    {
        "tpope/vim-surround",
    },
    {
        "unblevable/quick-scope",
    },
    {
        'numToStr/Comment.nvim',
        opts = {},
    },
    {
        'aserowy/tmux.nvim',
        config = function () return require('tmux').setup() end
    },
}
