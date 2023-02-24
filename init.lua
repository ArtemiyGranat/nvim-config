require("artemii.plugins-setup")
require("artemii.core.options")
require("artemii.core.colorscheme")
require("artemii.core.keymaps")
require("artemii.plugins.nvim-tree")
require("artemii.plugins.comment")
require("artemii.plugins.lualine")
require("artemii.plugins.nvim-cmp")
require("artemii.plugins.lsp.lspconfig")

-- lsp servers
require'lspconfig'.clangd.setup{}
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.pyright.setup{}
