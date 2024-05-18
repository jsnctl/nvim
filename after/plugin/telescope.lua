local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', function()
	builtin.find_files({ no_ignore = true })
end)
vim.keymap.set('n', '<leader>ss', function()
	builtin.grep_string({ search = vim.fn.input("🔎 ") })
end)				
