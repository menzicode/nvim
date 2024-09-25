vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- opens file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- esc insert mode
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "<C-j>", "<Esc>A")

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
vim.keymap.set("n", "<leader>ss", ":noh<CR>")

-- go down/up by 10 lines
vim.keymap.set("n", "<C-j>", "10jzz")
vim.keymap.set("n", "<C-k>", "10kzz")

-- insert/delete lines
vim.keymap.set("n", "+", "O<esc>")
vim.keymap.set("n", "_", "dd")

-- delete line to system register, insert line from system register (excel delete/insert behavior)
vim.keymap.set("n", "<C-p>", "O<esc>\"+Pjdd")
vim.keymap.set("n", "<C-x>", "\"+dd", {noremap = true, silent = true})
vim.keymap.set("n", "<C-y>", "\"+yy")

-- make changing within text object easier
vim.keymap.set("n", "c\"", "ci\"")
vim.keymap.set("n", "c)", "ci)")
vim.keymap.set("n", "c\'", "ci\'")
vim.keymap.set("n", "y\"", "yi\"")
vim.keymap.set("n", "y)", "yi)")
vim.keymap.set("n", "y\'", "yi\'")

-- open/close tab
vim.keymap.set("n", "<leader>++", ":tabnew<CR>")
vim.keymap.set("n", "<leader>--", ":tabc<CR>")

-- window management
vim.keymap.set("n", "<leader>wp", "<C-w>+")
vim.keymap.set("n", "<leader>wm", "<C-w>-")

-- Toggle ZenMode
vim.keymap.set("n", "<leader>zm", ":ZenMode<CR>")

-- Buffer Management
vim.keymap.set("n", "<leader>bp", ":bprev<CR>")
vim.keymap.set("n", "<leader>bn", ":bnext<CR>")
vim.keymap.set("n", "<leader>bd", ":bd<CR>")

-- Break out from inside brackets
vim.keymap.set("n", "<leader>mv}", "0f{a<CR><Esc>f}i<CR><Esc>k")
vim.keymap.set("n", "<leader>mv)", "0f(a<CR><Esc>f)i<CR><Esc>k")

-- Add Brackets
vim.keymap.set("n", "<leader>ad}", "^i{<CR><Esc>A<CR>}<Esc>")
vim.keymap.set("n", "<leader>ad)", "^i(<CR><Esc>A<CR>)<Esc>")

-- Put after comma on newline 
vim.keymap.set("n", "<leader>nl", "f,a<CR><Esc>")

vim.keymap.set("n", "<leader> ", "a <Esc>")

-- Open Cheat Sheet
vim.keymap.set("n", "<leader>??", "<C-w>s:e ~/Notes/cs/CheatSheets.norg<CR>", {noremap = true, silent = true})

-- Open todo
vim.keymap.set("n", "<leader><C-t>", "<C-w>v:e ~/Notes/cs/Todo.norg<CR>", {noremap = true, silent = true})

-- Copilot
vim.keymap.set("v", "<leader>ce", ":CopilotChatExplain<CR>", {noremap = true, silent = true})
vim.keymap.set("v", "<leader>cf", ":CopilotChatFix<CR>", {noremap = true, silent = true})
vim.keymap.set("v", "<leader>cr", ":CopilotChatReview<CR>", {noremap = true, silent = true})
vim.keymap.set("v", "<leader>co", ":CopilotChatOptimize<CR>", {noremap = true, silent = true})
vim.keymap.set("v", "<leader>cc", ":CopilotChat<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>ce", "ggVG:CopilotChatExplain<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>cf", "ggVG:CopilotChatFix<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>cr", "ggVG:CopilotChatReview<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>co", "ggVG:CopilotChatOptimize<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>cc", "ggVG:CopilotChat<CR>", {noremap = true, silent = true})

