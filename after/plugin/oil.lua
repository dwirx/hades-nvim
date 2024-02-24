
require("oil").setup({
  float = {
    max_width = 30,
    max_height = 50,
  },
},
-- vim.keymap.set("n","-", "<CMD>Oil --float<CR>", {desc = "Open parent directory"})
-- vim.keymap.set("n","-", "<CMD>Oil --float<CR>", {desc = "Open parent directory"})
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
)
