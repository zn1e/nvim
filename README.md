# NeoVim Configuration
My work in progress neovim configuration as I delved deeper learning and using this editor.

## Structure
```bash
.
├── init.lua
├── lsp
│   ├── bashls.lua
│   ├── lua_ls.lua
│   ├── pyright.lua
│   ├── rust-analyzer.lua
│   ├── tsgo.lua
│   └── yamlls.lua
└── lua
    ├── after
    │   └── lsp
    │       └── roslyn-ls.lua
    ├── config
    │   ├── after.lua
    │   ├── keymaps.lua
    │   ├── lazy.lua
    │   └── options.lua
    └── plugins
        ├── colorscheme.lua
        ├── completion.lua
        ├── file-system.lua
        ├── harpoon.lua
        ├── lsp.lua
        ├── lualine.lua
        ├── telescope.lua
        ├── treesitter.lua
        └── utils.lua
```
