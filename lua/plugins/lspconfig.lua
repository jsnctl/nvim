return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    vim.lsp.config("*", {
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
    })

    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls", "yamlls" }, -- auto-install LSPs
    })

    vim.lsp.enable("gopls")
  end,
}
