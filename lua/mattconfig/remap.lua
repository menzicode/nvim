vim.g.mapleader = " "

-- opens file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- esc insert mode
vim.keymap.set("i", "jj", "<Esc>")

-- in visual mode, move line up (k) or down (j)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- append next line to end of this line
vim.keymap.set("n", "J", "mzJ`z")

-- tab halfway up/down page
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Searches for text
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- exits a search (also x)
vim.keymap.set("n", "ss", ":noh")

-- testing Git
