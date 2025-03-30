local colors = require('catppuccin.palettes').get_palette 'mocha'

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
    padding = 0,
    -- padding_char = ' ',
    margin = { horizontal = 1, vertical = 0 },
  },
  render = function(props)
    local filename =
      vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ':t')
    if filename == '' then
      filename = '[No Name]'
    end

    local ft_icon, ft_color = devicons.get_icon_color(filename)

    local arrow_status
    local arrow_status_text
    if props.focused then
      arrow_status = require 'arrow.statusline'
      arrow_status_text = arrow_status.text_for_statusline_with_icons()
    else
      arrow_status_text = ''
    end

    local modified = vim.bo[props.buf].modified

    local res =
      {
        ft_icon and {
          ' ',
          ft_icon,
          ' ',
          guibg = props.focused and ft_color or colors.base,
          guifg = props.focused and helpers.contrast_color(ft_color)
            or ft_color,
        } or '',
        {
          modified and ' ●' or ' ',
          guifg = colors.yellow,
        },
        {
          filename,
          gui = modified and 'bold,italic' or 'italic',
          guifg = props.focused and colors.text or colors.overlay2,
        },
        ' ',
        {
          arrow_status_text,
          guifg = colors.pink,
        },
        guibg = colors.base,
      }
    table.insert(res, ' ')
    return res
  end,
}
