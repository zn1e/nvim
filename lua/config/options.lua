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
	termguicolors = true,
	confirm = true,
	signcolumn = "yes",
	smartindent = true,
	tildeop = true,
	winborder = "double",
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
