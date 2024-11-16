require('supermaven-nvim').setup {
  keymaps = {
    accept_suggestion = '<C-l>',
    clear_suggestion = '<C-c>',
    accept_word = '<C-j>',
  },
  ignore_filetypes = { '', 'chatgpt-input', 'oil', 'minifiles' }, -- or { "cpp", }
  log_level = 'info', -- set to "off" to disable logging completely
  disable_inline_completion = false, -- disables inline completion for use with cmp
  disable_keymaps = false, -- disables built in keymaps for more manual control
}
