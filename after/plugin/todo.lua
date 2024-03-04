-- <leader>td brings up todotrouble
vim.keymap.set("n", "<leader>td", "<cmd>TodoTrouble<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>tD", "<cmd>TodoTelescope<cr>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "]t", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

-- TODO: 
-- FIX:
-- HACK:
-- PERF:
-- NOTE:
-- WARNING:

