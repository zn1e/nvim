return {
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim",
                config = function ()
                    require("mason").setup({
                        registries = {
                            "github:mason-org/mason-registry",
                            "github:Crashdummyy/mason-registry",
                        }
                    })
                end
            },
            "neovim/nvim-lspconfig",
        } 
    },
    {
        "seblyng/roslyn.nvim",
        ---@module 'roslyn.config'
        ---@type RoslynNvimConfig
        opts = {
            -- your configuration comes here; leave empty for default settings
    },
}
}
