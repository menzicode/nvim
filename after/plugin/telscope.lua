local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)

-- Search errors
vim.keymap.set("n", "<leader>tn", ":Telescope notify<CR>")
vim.keymap.set("n", "<leader>tb", ":Telescope buffers<CR>")
