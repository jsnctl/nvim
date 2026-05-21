return {
  "williamboman/mason.nvim",
  build = ":MasonUpdate", -- optional: update registry on install
  config = function()
    require("mason").setup()
  end,
}

