-- NOTE: Look at https://github.com/hrsh7th/nvim-cmp/wiki/Menu-Appearance#how-to-get-types-on-the-left-and-offset-the-menu
function(entry, vim_item)
  local color_item = require("nvim-highlight-colors").format(entry, { kind = vim_item.kind })
  local kind = require("lspkind").cmp_format({
    mode = "symbol_text",
    maxwidth = 50,
    ellipsis_char = '...',
    symbol_map = { Copilot = "", Codeium = "", },
  })(entry, vim_item)

  if color_item.abbr_hl_group then
    kind.kind_hl_group = color_item.abbr_hl_group
    kind.kind = color_item.abbr
  end
  return kind
end
