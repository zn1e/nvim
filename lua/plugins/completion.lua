return {
    {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    opts = {
        suggestion = { enabled = false },
        panel = { enabled = false },
        filetypes = {
            markdown = true,
            help = true,
            },
        },
    },
    {
	'saghen/blink.cmp',
	dependencies = { 'rafamadriz/friendly-snippets', 'zbirenbaum/copilot.lua', 'fang2hou/blink-copilot' },
	version = '1.*',
	opts = {
	-- See :h blink-cmp-config-keymap for defining your own keymap
	keymap = { preset = 'enter' },
	    appearance = {
	      nerd_font_variant = 'mono'
	},
	completion = { documentation = { auto_show = false } },
	sources = {
	    default = { 
                'copilot', 
                'lsp', 
                'path', 
                'snippets', 
                'buffer' 
            },
        providers = {
            copilot = {
                name = "copilot",
                module = "blink-copilot",
                score_offset = 100,
                async = true,
            }, 	
        },
    },
	fuzzy = { implementation = "prefer_rust_with_warning" }
	},
	opts_extend = { "sources.default" }
    }
}
