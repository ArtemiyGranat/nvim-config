local status, toggleterm = pcall(require, "toggleterm")
if not status then
  return
end

toggleterm.setup({
    size = 50,
    hide_numbers = true,
    insert_mappings = false,
    open_mapping = [[<Leader>t]],
    shade_filetypes = {},
    shade_terminals = false,
    shading_factor = 0.1,
    start_in_insert = true,
    persist_size = true,
    direction = "vertical",
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
