local colors = {
  _nc = '#16141f',
  base = '#191724',
  surface = '#1f1d2e',
  overlay = '#26233a',
  muted = '#6e6a86',
  subtle = '#908caa',
  text = '#e0def4',
  love = '#eb6f92',
  gold = '#f6c177',
  rose = '#ebbcba',
  pine = '#31748f',
  foam = '#9ccfd8',
  iris = '#c4a7e7',
  highlight_low = '#21202e',
  highlight_med = '#403d52',
  highlight_high = '#524f67',
  none = 'NONE',
}

local darkenHexColor = function(hex, factor)
  -- Ensure factor is between 0 and 1
  factor = math.max(0, math.min(factor, 1))

  -- Convert hex to RGB
  local r = tonumber(hex:sub(2, 3), 16)
  local g = tonumber(hex:sub(4, 5), 16)
  local b = tonumber(hex:sub(6, 7), 16)

  -- Darken the color by reducing each RGB component by the factor
  r = math.floor(r * (1 - factor))
  g = math.floor(g * (1 - factor))
  b = math.floor(b * (1 - factor))

  -- Convert RGB back to hex
  local darkerHex = string.format('#%02x%02x%02x', r, g, b)
  return darkerHex
end

local devicons = require 'nvim-web-devicons'
local helpers = require 'incline.helpers'
require('incline').setup {
  window = {
    padding = 1,
    padding_char = ' ',
    margin = { horizontal = 1, vertical = 0 },
  },
  render = function(props)
    local filename =
      vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ':t')
    if filename == '' then
      filename = '[No Name]'
    end
    local ft_icon, ft_color = devicons.get_icon_color(filename)
    local modified = vim.bo[props.buf].modified
    local res = {
      ft_icon and {
        ' ',
        ft_icon,
        ' ',
        guibg = ft_color,
        guifg = helpers.contrast_color(ft_color),
      } or '',
      ' ',
      {
        modified and filename .. ' ' or filename,
        gui = modified and 'bold,italic' or 'bold',
      },
      guibg = colors.base,
    }
    table.insert(res, ' ')
    return res
  end,
}
