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
vim.keymap.set("n", "gJ", "mzgJ`z")

-- tab halfway up/down page
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Searches for text
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- exits a search (also x)
vim.keymap.set("n", "ss", ":noh<CR>")

-- go down/up by 10 lines
vim.keymap.set("n", "<C-j>", "10jzz")
vim.keymap.set("n", "<C-k>", "10kzz")

-- insert/delete lines
vim.keymap.set("n", "+", "o<esc>")
vim.keymap.set("n", "_", "dd")

-- make changing within text object easier
vim.keymap.set("n", "c\"", "ci\"")
vim.keymap.set("n", "c)", "ci)")
vim.keymap.set("n", "c\'", "ci\'")
vim.keymap.set("n", "y\"", "yi\"")
vim.keymap.set("n", "y)", "yi)")
vim.keymap.set("n", "y\'", "yi\'")

-- make changing within text object easier
vim.keymap.set("n", "<C-+>", ":tabnew<CR>")
vim.keymap.set("n", "<leader>--", ":tabc<CR>")

-- Toggle ZenMode
vim.keymap.set("n", "<leader>zm", ":ZenMode<CR>")

-- Buffer Management
vim.keymap.set("n", "<leader>bp", ":bprev<CR>")
vim.keymap.set("n", "<leader>bn", ":bnext<CR>")
vim.keymap.set("n", "<leader>bd", ":bd<CR>")
