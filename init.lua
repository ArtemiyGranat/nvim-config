require("plugins-setup")
require("core.options")
require("core.colorscheme")
require("core.keymaps")
require("plugins.nvim-tree")
require("plugins.comment")
require("plugins.lualine")
require("plugins.nvim-cmp")
require("plugins.nvim-autopairs")
require("plugins.toggleterm")
require("plugins.lsp.lspconfig")

-- lsp servers
require'lspconfig'.clangd.setup{}
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.pyright.setup{}
