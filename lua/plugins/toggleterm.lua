local status, toggleterm = pcall(require, "toggleterm")
if not status then
  return
end

toggleterm.setup({
    size = 20,
    hide_numbers = true,
    open_mapping = [[<leader>x]],
    shade_filetypes = {},
    shade_terminals = false,
    shading_factor = 0.1,
    start_in_insert = true,
    persist_size = true,
    direction = "horizontal",
    close_on_exit = true,
    highlights = {
    Normal = {
        guibg = "#181818",
    },
    NormalFloat = {
        link = '#181818'
    },
    FloatBorder = {
        guifg = "#ea6962",
        guibg = "#282828",
    },
    },
    float_opts = {
    border = { "┏", "━", "┓", "┃", "┛","━", "┗", "┃" },
    }
})