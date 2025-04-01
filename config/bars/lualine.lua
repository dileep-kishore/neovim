local colors = require('catppuccin.palettes').get_palette 'mocha'

local custom_catppuccin = require 'lualine.themes.catppuccin-mocha'

custom_catppuccin.normal.c.bg = colors.base
custom_catppuccin.inactive.c.bg = colors.base

local status_ok, lualine = pcall(require, 'lualine')
if not status_ok then
  return
end

local hide_in_width = function()
  return vim.fn.winwidth(0) > 80
end

local diagnostics = {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  sections = { 'error', 'warn' },
  symbols = { error = ' ', warn = ' ' },
  colored = true,
  update_in_insert = false,
  separator = '',
  always_visible = true,
  padding = { left = 1, right = 1 },
}

local mode = {
  'mode',
  fmt = function(str)
    return ' [' .. str:sub(1, 1) .. ']'
  end,
  padding = { left = 1, right = 0 },
}

local filename = {
  'filename',
  file_status = true,
  path = 1,
  cond = hide_in_width,
  symbols = {
    modified = '[+]',
    readonly = ' ',
    unnamed = '[No Name]',
    newfile = '[New]',
  },
  separator = '',
  padding = { left = 0, right = 0 },
  color = { fg = colors.text },
}

local icononly_filetype = {
  'filetype',
  colored = false,
  icon_only = true,
  separator = '',
  padding = { left = 1, right = 0 },
  color = { fg = colors.blue },
}

local center_comp = {
  '%=',
  separator = '',
}

local function modified()
  if vim.bo.modified then
    return ' '
  elseif vim.bo.modifiable == false or vim.bo.readonly == true then
    return ' '
  end
  return ''
end

local modified_section = {
  modified,
  color = { fg = '#f38ba8' },
}

local function get_lsp_status()
  local buf_clients = vim.lsp.get_clients()
  local buf_client_names = ''
  for _, client in pairs(buf_clients) do
    -- table.insert(buf_client_names, client.name)
    if buf_client_names == '' then
      buf_client_names = client.name
    else
      buf_client_names = buf_client_names .. ', ' .. client.name
    end
  end
  -- return table.concat(buf_client_names, self.options.split)
  return buf_client_names
end

local lsp_status = {
  get_lsp_status,
  separator = '',
}

local filetype = {
  'filetype',
  icons_enabled = true,
}

local branch = {
  'b:gitsigns_head',
  icons_enabled = true,
  icon = '',
  separator = '',
  padding = { left = 1, right = 1 },
  color = { gui = 'bold' },
}

local diff = {
  'diff',
  colored = true,
  symbols = { added = ' ', modified = ' ', removed = ' ' }, -- changes diff symbols
  cond = hide_in_width,
  update_in_insert = true,
  always_visible = true,
  separator = '',
  padding = { left = 0, right = 1 },
}

local cmd = {
  function()
    return require('noice').api.status.command.get()
  end,
  cond = function()
    return package.loaded['noice'] and require('noice').api.status.command.has()
  end,
}

local macro = {
  require('noice').api.statusline.mode.get,
  cond = require('noice').api.statusline.mode.has,
  color = { fg = colors.red },
}

local search = {
  require('noice').api.status.search.get,
  cond = require('noice').api.status.search.has,
  color = { fg = colors.peach },
}

-- cool function for progress
local progress_custom = function()
  local current_line = vim.fn.line '.'
  local total_lines = vim.fn.line '$'
  local chars = {
    '__',
    '▁▁',
    '▂▂',
    '▃▃',
    '▄▄',
    '▅▅',
    '▆▆',
    '▇▇',
    '██',
  }
  local line_ratio = current_line / total_lines
  local index = math.ceil(line_ratio * #chars)
  return chars[index]
end

local progress = {
  'progress',
  separator = '',
  padding = { left = 0, right = 0 },
}

local location = {
  'location',
  cond = hide_in_width,
  separator = '',
  padding = { left = 0, right = 0 },
}

local spaces = function()
  return 'spaces: ' .. vim.api.nvim_buf_get_option(0, 'shiftwidth')
end

lualine.setup {
  options = {
    icons_enabled = true,
    globalstatus = true,
    theme = custom_catppuccin,
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = { 'alpha', 'dashboard', 'NvimTree', 'Outline' },
    always_divide_middle = true,
  },
  sections = {
    lualine_a = { mode },
    lualine_b = { filetype, lsp_status },
    lualine_c = {
      center_comp,
      icononly_filetype,
      filename,
      diagnostics,
    },
    lualine_x = {
      macro,
      search,
      cmd,
      'encoding',
    },
    lualine_y = { branch, diff },
    lualine_z = { progress, progress_custom },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { icononly_filetype, filename },
    lualine_x = { location },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
}
