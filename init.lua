require("mattconfig")
--vim.cmd('colorscheme tokyonight-moon')
local theme = vim.fn.getenv("NVIM_THEME")
print()
if theme == "light" then
    vim.o.background = "light"
    vim.cmd([[colorscheme tokyonight-day]])
elseif theme == "dark" then
    vim.o.background = "dark"
    vim.cmd([[colorscheme tokyonight-moon]])
end

emptyBG()
