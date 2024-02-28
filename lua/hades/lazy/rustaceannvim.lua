local M = {
  "mrcjkb/rustaceanvim",
  version = "^4", -- Recommended
  ft = { "rust" },
  dependencies = { "neovim/nvim-lspconfig" },
}

function M.config()
  require("rustacean").setup()
  local on_attach = require("lspconfig").on_attach
  local capabilities = require("lspconfig").capabilities

  vim.g.rustaceanvim = {
    server = {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  }
end

return M
