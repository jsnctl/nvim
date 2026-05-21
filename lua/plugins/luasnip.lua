return {
  "L3MON4D3/LuaSnip",
  dependencies = { "rafamadriz/friendly-snippets" }, -- optional but useful
  build = "make install_jsregexp", -- only if you want regex snippets
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load()
  end,
}

