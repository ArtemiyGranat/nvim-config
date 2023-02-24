local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
    return
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

-- configure nvim-tree
nvimtree.setup({
    view = {
        width = 35
    },
    -- change folder arrow icons
    renderer = {
        icons = {
            glyphs = {
                folder = {
                    arrow_closed = "", -- arrow when folder is closed
                    arrow_open = "", -- arrow when folder is open
                },
            },
        },
    },
    -- disable window_picker for explorer to work well with window splits
    actions = {
        open_file = {
            window_picker = {
                enable = false,
            },
        },
    },
    filters = {
        custom = { ".git", ".svn", ".DS_Store", ".hg" },
    },
    git = {
        ignore = false,
    },
})

-- quit nvim-tree when its the only one window left
vim.cmd [[
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
]]
