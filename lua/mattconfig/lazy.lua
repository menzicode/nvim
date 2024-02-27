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
    "rktjmp/lush.nvim",
    "chrisbra/Colorizer",
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
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    "folke/zen-mode.nvim",
	"mbbill/undotree",
	"tpope/vim-fugitive",
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
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
