local M = {
  "LunarVim/darkplus.nvim",
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  dependecies = {}
}

function M.config()
  vim.cmd.colorscheme "darkplus"
  -- vim.cmd.colorscheme "TokyoNight"
end

local TokyoNight = {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}

function TokyoNight.config()
  vim.cmd.colorscheme "tokyonight"
  -- vim.cmd.colorscheme "TokyoNight"
end

-- return M
return TokyoNight
