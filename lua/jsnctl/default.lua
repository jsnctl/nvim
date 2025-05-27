vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.wo.number = true
vim.opt.swapfile = false
vim.cmd [[colorscheme evening]]
vim.api.nvim_set_hl(0, "Normal", {guibg=NONE, ctermbg=NONE})
vim.api.nvim_set_hl(0, "NonText", {guibg=NONE, ctermbg=NONE})
vim.api.nvim_set_hl(0, "EndOfBuffer", {guibg=NONE, ctermbg=NONE})
vim.api.nvim_set_option("clipboard", "unnamedplus")

local cmp = require('cmp')
cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  }),
})
