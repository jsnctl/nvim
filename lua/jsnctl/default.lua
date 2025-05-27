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

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function()
        local params = vim.lsp.util.make_range_params()
        params.context = { only = { "source.organizeImports" } }
        local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, 1000)
        for _, res in pairs(result or {}) do
            for _, action in pairs(res.result or {}) do
                if action.edit then
                    vim.lsp.util.apply_workspace_edit(action.edit, "utf-8")
                end
            end
        end
    end,
})
