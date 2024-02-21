
function emptyBG()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end


require('text-to-colorscheme').setup {

  ai = {
    openai_api_key = "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",
  },
  hex_palettes = {
	{
	name = "nazi germany",
    	background_mode = "dark",
	background = "#282828",
	foreground = "#f8f8f2",
	accents = {
	 "#ff5555",
	 "#44d469",
	 "#cdd477",
	 "#bd93f9",
	 "#ffb86c",
	 "#8be9fd",
	 "#6b708e",
      	   }
	}

  }
}

vim.api.nvim_create_user_command('CSRP', function()
	vim.cmd('colorscheme rose-pine')
	emptyBG()
end, {})

vim.api.nvim_create_user_command('CSTN', function()
	vim.cmd('colorscheme tokyonight')
	emptyBG()
end, {})

vim.api.nvim_create_user_command('CSAI', function()
	vim.cmd('colorscheme text-to-colorscheme')
	emptyBG()
end, {})
