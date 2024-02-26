
function emptyBG()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end


require('text-to-colorscheme').setup {

  ai = {
    openai_api_key = OAI_KEY
  },
  hex_palettes = {
   {
      name = "high-contrast monochrome dark theme ",
      background_mode = "dark",
      background = "#000000",
      foreground = "#ffffff",
      accents = {
         "#808080",
         "#c0c0c0",
         "#a0a0a0",
         "#e0e0e0",
         "#666666",
         "#d0d0d0",
         "#b0b0b0",
      }
   },
   {
      name = "Star Wars",
      background_mode = "dark",
      background = "#1c1f27",
      foreground = "#f8f8f2",
      accents = {
         "#f28779",
         "#66d9ef",
         "#90bb64",
         "#ab9df2",
         "#ffd866",
         "#ff6188",
         "#fc9867",
      }
   },
   {
      name = "The Lord of the Rings",
      background_mode = "dark",
      background = "#1c1c1c",
      foreground = "#d4c7a8",
      accents = {
         "#698674",
         "#e6a15b",
         "#248981",
         "#b58900",
         "#cb4b16",
         "#6c71c4",
         "#dc322f",
      }
   },
   {
      name = "Swiss Flag",
      background_mode = "dark",
      background = "#d52b1e",
      foreground = "#ffffff",
      accents = {
         "#ff9a9a",
         "#ffcccd",
         "#ffecec",
         "#ffbcbc",
         "#fff2f2",
         "#ffacac",
         "#ffdede",
      }
   },
   {
      name = "Roman Empire",
      background_mode = "dark",
      background = "#0b0909",
      foreground = "#ffecb0",
      accents = {
          "#7ab491",
          "#ffaf5e",
          "#ae612c",
         "#ffbdb5",
         "#e6a15b",
         "#d57150",
         "#fa345e",
      }
   },
   {
      name = "What the consoles in the death star would look like for empire programmers working under the guidance of darth vader",
      background_mode = "dark",
      background = "#1c1c1c",
      foreground = "#f5f5f5",
      accents = {
         "#ff0000",
         "#828282",
         "#b22222",
         "#828282",
         "#a9a9a9",
         "#d3d3d3",
         "#dc143c",
      }
   },
   {
      name = "HiContrast",
      background_mode = "dark",
      background = "#1c1c1c",
      -- comments, command line, filenames in explorer
      foreground = "#ffffcc",
      accents = {
          -- local, if, then, end, function, etc.
          "#99d6ff",
          --string
          "#e6f2ff",
          -- style suggestions, type declarations
          "#b3b3ff",
          -- method calls, {} fields
         "#99ff33",
         -- = sign, 'vim' and 'lazypath' blue? inverted?
         "#ffffff",
         -- html tags, 'undefined' in ts
         "#66ff99",
         -- directory names, errors
         "#fa345e",
      }
   },
  },
  default_palette = "Roman Empire"
}


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


vim.api.nvim_create_user_command('CSRP', function()
	vim.cmd('colorscheme rose-pine')
end, {})

vim.api.nvim_create_user_command('CSGB', function()
	vim.cmd('colorscheme gruvbox')
end, {})

vim.api.nvim_create_user_command('CSTN', function()
	vim.cmd('colorscheme tokyonight')
end, {})

vim.api.nvim_create_user_command('CSAI', function()
	vim.cmd('colorscheme text-to-colorscheme')
end, {})


