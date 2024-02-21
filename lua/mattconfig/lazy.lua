local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup( {
	"nvim-lua/plenary.nvim",
	"nvim-telescope/telescope.nvim",
	"ThePrimeagen/harpoon",
	"mbbill/undotree",
	"tpope/vim-fugitive",
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate"
	},
	{
		"svermeulen/text-to-colorscheme.nvim",
		name = "text-to-colorscheme",
		lazy = true
	},
	{ 
		"folke/tokyonight.nvim",
		name = "tokyonight",
		lazy = true
	},
	{
		"rose-pine/neovim", 
		name = "rose-pine",
		lazy = true
	}, 
	},
	{}	
	)
