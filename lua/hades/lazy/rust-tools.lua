return {
  "simrat39/rust-tools.nvim",
  dependencies = "neovim/nvim-lspconfig",
  ft = "rust",
  opts = function()
    require("rust-tools").setup({})
  end,
}
