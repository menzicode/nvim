local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)

-- Search errors
vim.keymap.set("n", "<leader>pn", ":Telescope notify<CR>")
vim.keymap.set("n", "<leader>pb", ":Telescope buffers<CR>")

-- Live grep
vim.keymap.set("n", "<leader>pg", ":Telescope live_grep<CR>")

