require('nvim-treesitter.configs').setup {
  textobjects = {
    move = {
      enable = true,
      set_jumps = false,
      goto_next_start = {
        [']j'] = { query = '@code_cell.inner', desc = 'next code block' },
      },
      goto_previous_start = {
        --- ... other keymaps
        ['[j'] = { query = '@code_cell.inner', desc = 'previous code block' },
      },
    },
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        --- ... other keymaps
        ['ij'] = { query = '@code_cell.inner', desc = 'in block' },
        ['aj'] = { query = '@code_cell.outer', desc = 'around block' },
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
