local options = {
	number = true,
	relativenumber = true,
	splitbelow = true,
	splitright = true,
	wrap = false,
	expandtab = true,
	tabstop = 4,
	shiftwidth = 4,
	clipboard = "unnamedplus",
	scrolloff = 999,
	virtualedit = "block",
	inccommand = "split",
	ignorecase = true,
	confirm = true,
	signcolumn = "yes",
	smartindent = true,
	tildeop = true,
	winborder = "double",
    foldlevelstart = 99,
    foldlevel = 99,
    foldenable = true,
    foldcolumn = "1"
}

if vim.env.TERM:find('256color') then
    options.termguicolors = true
else
    options.termguicolors = false
end

for k, v in pairs(options) do
	vim.opt[k] = v
end
