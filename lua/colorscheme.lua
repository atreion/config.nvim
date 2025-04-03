-- Colorscheme
local colorscheme = 'kanagawa-wave'

-- Note: Make protected call to avoid error massages if colorscheme is missing.
local is_ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)
if not is_ok then
  vim.notify('colorscheme ' .. colorscheme .. ' not found!')
  return
end
