require('base')
require('highlights')
require('maps')
require('plugins')

-- set the colorscheme without errors :)
xpcall(function()
  vim.cmd('colorscheme everforest')
end, function()
  -- if not exist everforest then apply murphy
  vim.cmd('colorscheme murphy')
end)

local has = function(x)
  return vim.fn.has(x) == 1
end

local is_win = has "win32"


if is_win then
  vim.opt.clipboard:prepend { 'unnamed', 'unnamedplus' }
end
