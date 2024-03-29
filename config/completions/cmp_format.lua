function(entry, vim_item)
  local colors = {
      _nc = "#16141f",
      base = "#191724",
      surface = "#1f1d2e",
      overlay = "#26233a",
      muted = "#6e6a86",
      subtle = "#908caa",
      text = "#e0def4",
      love = "#eb6f92",
      gold = "#f6c177",
      rose = "#ebbcba",
      pine = "#31748f",
      foam = "#9ccfd8",
      iris = "#c4a7e7",
      highlight_low = "#21202e",
      highlight_med = "#403d52",
      highlight_high = "#524f67",
      none = "NONE",
  }
  local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50, symbol_map = { Copilot = " " } })(entry, vim_item)
  local strings = vim.split(kind.kind, "%s", { trimempty = true })
  kind.kind = " " .. (strings[1] or "") .. " "
  local menu_item = ""
  if strings[2] == "" then
    menu_item = "Copilot"
  else
    menu_item = strings[2]
  end
  kind.menu = "    (" .. menu_item .. ")"
  return kind
end
