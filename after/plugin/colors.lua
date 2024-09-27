function emptyBG()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end

-- Default options:
require("gruvbox").setup({
  terminal_clors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})

vim.api.nvim_create_user_command('CSCP', function()
	vim.cmd('colorscheme catppuccin')
end, {})

vim.api.nvim_create_user_command('CSNF', function()
	vim.cmd('colorscheme nightfox')
end, {})

vim.api.nvim_create_user_command('CSTF', function()
	vim.cmd('colorscheme terafox')
end, {})

vim.api.nvim_create_user_command('CSDF', function()
    vim.o.background = "light"
	vim.cmd('colorscheme dayfox')
end, {})

vim.api.nvim_create_user_command('CSCF', function()
	vim.cmd('colorscheme carbonfox')
end, {})

vim.api.nvim_create_user_command('CSNDF', function()
	vim.cmd('colorscheme nordfox')
end, {})

vim.api.nvim_create_user_command('CSRP', function()
	vim.cmd('colorscheme rose-pine')
end, {})

vim.api.nvim_create_user_command('CSGB', function()
	vim.cmd('colorscheme gruvbox')
end, {})

vim.api.nvim_create_user_command('CSTN', function()
	vim.cmd('colorscheme tokyonight-night')
end, {})

vim.api.nvim_create_user_command('CSTD', function()
    vim.o.background = "light"
	vim.cmd('colorscheme tokyonight-day')
end, {})

vim.api.nvim_create_user_command('CSTS', function()
	vim.cmd('colorscheme tokyonight-storm')
end, {})

vim.api.nvim_create_user_command('CSTM', function()
	vim.cmd('colorscheme tokyonight-moon')
end, {})

vim.api.nvim_create_user_command('CSAI', function()
	vim.cmd('colorscheme text-to-colorscheme')
end, {})


