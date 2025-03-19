vim.g.wiki_root = '~/wiki'

require("mattconfig")

local function set_linebreak()
  vim.cmd('set wrap')
  vim.cmd('set linebreak')
end

local function set_colorscheme()
  local handle = io.popen("defaults read -g AppleInterfaceStyle 2>/dev/null")
  local result = handle:read("*a")
  handle:close()

  if result:match("Dark") then
    vim.cmd('colorscheme tokyonight-night')
  else
    vim.cmd('colorscheme tokyonight-day')
  end
end

set_colorscheme()
set_linebreak()
-- empyBG()
