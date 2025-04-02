require('neopyter').setup {
  mode = 'direct',
  remote_address = '127.0.0.1:9001',
  file_pattern = { '*.ju.*' },
}

vim.keymap.set(
  'n',
  '<leader>jc',
  '<cmd>Neopyter execute notebook:run-cell<cr>',
  { desc = 'run selected' }
)
vim.keymap.set(
  'n',
  '<leader>ja',
  '<cmd>Neopyter execute notebook:run-all-above<cr>',
  { desc = 'run all above cell' }
)
vim.keymap.set(
  'n',
  '<leader>jr',
  '<cmd>Neopyter execute kernelmenu:restart<cr>',
  { desc = 'restart kernel' }
)
vim.keymap.set(
  'n',
  '<leader>jA',
  '<cmd>Neopyter execute notebook:restart-run-all<cr>',
  { desc = 'restart kernel and run all' }
)

require('nvim-treesitter.configs').setup {
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['aj'] = { query = '@cell', desc = 'Select cell' },
        ['ij'] = { query = '@cellcontent', desc = 'Select cell content' },
      },
    },
    move = {
      enable = true,
      goto_next_start = {
        [']j'] = '@cellseparator',
      },
      goto_previous_start = {
        ['[j'] = '@cellseparator',
      },
    },
  },
}

-- Provide a command to create a blank new Python notebook
-- note: the metadata is needed for Jupytext to understand how to parse the notebook.
-- if you use another language than Python, you should change it in the template.
local default_notebook = [[
  {
    "cells": [
     {
      "cell_type": "markdown",
      "metadata": {},
      "source": [
        ""
      ]
     }
    ],
    "metadata": {
     "kernelspec": {
      "display_name": "Python 3",
      "language": "python",
      "name": "python3"
     },
     "language_info": {
      "codemirror_mode": {
        "name": "ipython"
      },
      "file_extension": ".py",
      "mimetype": "text/x-python",
      "name": "python",
      "nbconvert_exporter": "python",
      "pygments_lexer": "ipython3"
     }
    },
    "nbformat": 4,
    "nbformat_minor": 5
  }
]]

local function new_notebook(filename)
  local path = filename
  local file = io.open(path, 'w')
  if file then
    file:write(default_notebook)
    file:close()
    vim.cmd('edit ' .. path)
  else
    print 'Error: Could not open new notebook file for writing.'
  end
end

vim.api.nvim_create_user_command('NewNotebook', function(opts)
  new_notebook(opts.args)
end, {
  nargs = 1,
  complete = 'file',
})
