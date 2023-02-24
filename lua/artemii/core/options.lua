local opt = vim.opt

-- line numbering
opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.backspace = "indent,eol,start"

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes" -- show sign column so that text doesn't shift
vim.cmd "set noshowmode"
vim.cmd "set noshowcmd"
-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true

-- "-" is the part of the word
opt.iskeyword:append("-")
