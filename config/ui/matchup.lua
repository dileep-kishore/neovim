local ok, cmp = pcall(require, 'cmp')
if ok then
  -- https://github.com/hrsh7th/nvim-cmp/issues/1940#issuecomment-2241068952
  cmp.event:on('menu_opened', function()
    vim.b.matchup_matchparen_enabled = false
  end)
  cmp.event:on('menu_closed', function()
    vim.b.matchup_matchparen_enabled = true
  end)
end
