require('quarto').setup {
  codeRunner = {
    enabled = true,
    default_method = 'molten', -- 'molten' or 'slime'
    ft_runners = {}, -- filetype to runner, ie. `{ python = "molten" }`.
    -- Takes precedence over `default_method`
    never_run = { 'yaml' }, -- filetypes which are never sent to a code runner
  },
}

local runner = require 'quarto.runner'
vim.keymap.set(
  'n',
  '<leader>nc',
  runner.run_cell,
  { desc = 'Quarto run cell', silent = true }
)
vim.keymap.set(
  'n',
  '<leader>nA',
  runner.run_above,
  { desc = 'Quarto run cell and above', silent = true }
)
vim.keymap.set(
  'n',
  '<leader>na',
  runner.run_all,
  { desc = 'Quarto run all cells', silent = true }
)
vim.keymap.set(
  'n',
  '<leader>nl',
  runner.run_line,
  { desc = 'Quarto run line', silent = true }
)
vim.keymap.set('n', '<leader>nR', function()
  runner.run_all(true)
end, { desc = 'Quarto run all cells of all languages', silent = true })
