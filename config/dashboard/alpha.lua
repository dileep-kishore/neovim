local status_ok, alpha = pcall(require, 'alpha')
if not status_ok then
  return
end

local dashboard = require 'alpha.themes.dashboard'
dashboard.section.header.val = {
  '                                                                       ',
  '                                                                       ',
  '                                                                       ',
  '                                                                       ',
  '                                                                       ',
  '                                                                       ',
  '                                                                       ',
  '                                                                     ',
  '       ████ ██████           █████      ██                     ',
  '      ███████████             █████                             ',
  '      █████████ ███████████████████ ███   ███████████   ',
  '     █████████  ███    █████████████ █████ ██████████████   ',
  '    █████████ ██████████ █████████ █████ █████ ████ █████   ',
  '  ███████████ ███    ███ █████████ █████ █████ ████ █████  ',
  ' ██████  █████████████████████ ████ █████ █████ ████ ██████ ',
  '                                                                       ',
  '                                                                       ',
  '                                                                       ',
  '                                                                       ',
  '                                                                       ',
  '                                                                       ',
}
dashboard.section.buttons.val = {
  dashboard.button('e', '  New file', ':ene <BAR> startinsert<CR>'),
  dashboard.button(
    'f',
    '  Find files',
    '<cmd>lua Snacks.picker.files()<CR>'
  ),
  dashboard.button(
    'p',
    '  Select project',
    '<cmd>lua Snacks.picker.projects()<CR>'
  ),
  dashboard.button(
    's',
    '󱁴  Search text',
    '<cmd>lua Snacks.picker.grep()<CR>'
  ),
  dashboard.button(
    't',
    '  Browse todos',
    '<cmd>lua Snacks.picker.todo_comments()<CR>'
  ),
  dashboard.button('x', '  Quit Neovim', ':qa<CR>'),
}

dashboard.section.footer.val = 'Amor Fati'

dashboard.section.footer.opts.hl = 'Type'
dashboard.section.header.opts.hl = 'Include'
dashboard.section.buttons.opts.hl = 'Keyword'

dashboard.opts.opts.noautocmd = false
vim.cmd [[autocmd User AlphaReady lua vim.b.miniindentscope_disable = true]]
alpha.setup(dashboard.opts)
