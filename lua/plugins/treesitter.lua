local languages = { 'c', 'lua', 'rust', 'cpp', 'css', 'html', 'markdown', 'markdown_inline', 'javascript', 'json', 'bash', 'tsx', 'python', 'typescript'}
return {
    {
        'nvim-treesitter/nvim-treesitter',
        branch = 'main',
        build = ':TSUpdate',
    },
    {
        'MeanderingProgrammer/treesitter-modules.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter' },
        opts = {
            ensure_installed = languages,
            fold = { enable = true },
            highlight = { 
	            enable = true, 
	            additional_vim_regex_highlighting = false 
	            },
            incremental_selection = { 
	            enable = true,
	            keymaps = {
		            init_selection = '<leader>ss',
		            node_incremental = '<leader>si',
		            scope_incremental = '<leader>sc',
		            node_decremental = '<leader>sd',
		        }
	        },
        },
    },
}
