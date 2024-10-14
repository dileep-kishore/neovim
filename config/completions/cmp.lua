local cmp = require 'cmp'
cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' },
  },
})

cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' },
  }, {
    {
      name = 'cmdline',
      option = {
        ignore_cmds = { 'Man', '!' },
      },
    },
  }),
})

cmp.setup.filetype('chatgpt-input', {
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'path' },
    { name = 'buffer' },
    { name = 'git' },
  }, {
    { name = 'buffer' },
  }),
})

cmp.setup.filetype('', {
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'path' },
    { name = 'buffer' },
    { name = 'git' },
  }, {
    { name = 'buffer' },
  }),
})

cmp.setup.filetype('oil', {
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'path' },
    { name = 'buffer' },
    { name = 'git' },
  }, {
    { name = 'buffer' },
  }),
})

cmp.setup.filetype('minifiles', {
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'path' },
    { name = 'buffer' },
    { name = 'git' },
  }, {
    { name = 'buffer' },
  }),
})

local luasnip = require 'luasnip'
local luasnip_types = require 'luasnip.util.types'

luasnip.config.setup {
  ext_opts = {
    [luasnip_types.choiceNode] = {
      active = { virt_text = { { '󰞗 ', 'Comment' } } },
    },
    [luasnip_types.insertNode] = {
      active = { virt_text = { { '󰞗 ', 'Comment' } } },
    },
  },
}
