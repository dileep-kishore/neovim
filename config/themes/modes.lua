local mocha = require('catppuccin.palettes').get_palette 'mocha'

require('modes').setup {
  set_cursor = true,
  set_cursorline = true,
  set_number = true,
  colors = {
    copy = mocha.yellow,
    delete = mocha.red,
    insert = mocha.green,
    visual = mocha.mauve,
  },
}
