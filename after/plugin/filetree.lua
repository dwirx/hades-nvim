-- nvim-tree
vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>tr", ":NvimTreeRefresh<CR>")
vim.keymap.set("n", "<leader>tn", ":NvimTreeFindFile<CR>")

require("nvim-tree").setup({
  -- ignore_buffer_on_setup = true,
  view = {
    side = "left",
    width = 30,
    relativenumber = true,
  },
  -- diagnostics = {
  --   enable = true,
  --   show_on_dirs = true,
  -- },
  renderer = {
    add_trailing = false,
    group_empty = true,
    highlight_git = true,
    full_name = false,
    highlight_opened_files = "none",
    root_folder_label = ":t",
    indent_width = 2,
    indent_markers = {
      enable = false,
      inline_arrows = true,
      icons = {
        corner = "└",
        edge = "│",
        item = "│",
        bottom = "─",
        none = " ",
      },
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {}
  },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    show_on_open_dirs = true,
    debounce_delay = 50,
  }
})
