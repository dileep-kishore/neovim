-- NOTE: Look at https://github.com/hrsh7th/nvim-cmp/wiki/Menu-Appearance#how-to-get-types-on-the-left-and-offset-the-menu
function(entry, vim_item)
  local kind = require("lspkind").cmp_format({
    mode = "symbol_text",
    maxwidth = 50,
    ellipsis_char = '...',
    symbol_map = { Copilot = "", Codeium = "", },
  })(entry, vim_item)
  -- local strings = vim.split(kind.kind, "%s", { trimempty = true })
  -- kind.kind = " " .. (strings[1] or "") .. " "
  -- local menu_item = ""
  -- if strings[2] == "" then
  --   menu_item = "Copilot"
  -- else
  --   menu_item = strings[2]
  -- end
  -- kind.menu = "    (" .. menu_item .. ")"
  return kind
end
