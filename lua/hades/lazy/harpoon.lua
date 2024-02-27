local M = {
    "ThePrimeagen/harpoon",
    event = "VeryLazy",
    dependencies = {
        { "nvim-lua/plenary.nvim" },
    },
}
function M.config()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    -- Add current file to harpoon
    vim.keymap.set("n", "<leader>ha", mark.add_file)
    vim.keymap.set("n", "<leader>he", ui.toggle_quick_menu)

    -- vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
    -- vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
    -- vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
    -- vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)

    vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end)
    vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end)
    vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end)
    vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end)
end

function M.mark_file()
    require("harpoon.mark").add_file()
    vim.notify "󱡅  marked file"
end

return M
