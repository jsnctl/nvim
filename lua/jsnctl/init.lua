require("jsnctl.remap")
vim.wo.number = true
vim.opt.swapfile = false
vim.cmd [[colorscheme evening]]
vim.api.nvim_set_hl(0, "Normal", {guibg=NONE, ctermbg=NONE})
vim.api.nvim_set_hl(0, "NonText", {guibg=NONE, ctermbg=NONE})
vim.api.nvim_set_hl(0, "EndOfBuffer", {guibg=NONE, ctermbg=NONE})
vim.api.nvim_set_option("clipboard", "unnamed")

require("jsnctl.packer")
