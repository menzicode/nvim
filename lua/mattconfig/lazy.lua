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
    {
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
    },
    {
      "yetone/avante.nvim",
      event = "VeryLazy",
      opts = {
        -- add any opts here
      },
      dependencies = {
        "stevearc/dressing.nvim",
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        --- The below dependencies are optional,
        "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
        {
          -- Make sure to setup it properly if you have lazy=true
          'MeanderingProgrammer/render-markdown.nvim',
          opts = {
            file_types = { "markdown", "Avante" },
          },
          ft = { "markdown", "Avante" },
        },
      },
    },
    {
        "github/copilot.vim",
    },
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        branch = "canary",
        dependencies = {
            {"github/copilot.vim"},
            {"nvim-lua/plenary.nvim"},
        },
        opts = {
            debug = true,
        }
    },
	"nvim-lua/plenary.nvim",
	"nvim-telescope/telescope.nvim",
    "chrisbra/Colorizer",
    "rktjmp/lush.nvim",
    {
        -- gcc motion to comment a line e.g. 4 gcc comments 4 lines
        "tpope/vim-commentary"
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
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
