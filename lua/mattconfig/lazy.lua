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

vim.o.termguicolors = true


require("lazy").setup( {
	"nvim-lua/plenary.nvim",
	"nvim-telescope/telescope.nvim",
    "chrisbra/Colorizer",
    "rktjmp/lush.nvim",
    {
        'wakatime/vim-wakatime',
        lazy = false
    },
    {
        "catppuccin/nvim", name = "catppuccin", priority = 1000,
    },
    {
        "rebelot/kanagawa.nvim", name = "kanagawa"
    },
    {
        "EdenEast/nightfox.nvim"
    },
    {
        "nvim-zh/colorful-winsep.nvim",
        config = true,
        event = { "WinNew "},
    },
    {
        "folke/todo-comments.nvim",
        lazy = false,
        config = function()
            require("todo-comments").setup {
            }
        end
    },
    {
        "folke/trouble.nvim",
         dependencies = { "nvim-tree/nvim-web-devicons" },
         opts = {

         },
    },
    {
        "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap" }
    },
    "theHamsta/nvim-dap-virtual-text",
    "leoluz/nvim-dap-go",
    {
        "ellisonleao/gruvbox.nvim", priority =1000, config = true
    },
    {
        "letieu/harpoon-lualine",
        dependencies = {
            "ThePrimeagen/harpoon",
            branch = "harpoon2",
        }
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        "rcarriga/nvim-notify",
        config = function()
          require("notify").setup({
            enabled = true,
          })
        end
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equalent to setup({}) function
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    "folke/zen-mode.nvim",
	"mbbill/undotree",
	"tpope/vim-fugitive",
    {
        'williamboman/mason.nvim'
    },
	{
        'williamboman/mason-lspconfig.nvim'
    },
	{
        'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x'
    },
	{
        'neovim/nvim-lspconfig'
    },
	{
        'hrsh7th/cmp-nvim-lsp'
    },
	{
        'hrsh7th/nvim-cmp'
    },
    {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        lazy = false,
    },
    {
        'L3MON4D3/LuaSnip'
    },
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

vim.notify = require("notify")
