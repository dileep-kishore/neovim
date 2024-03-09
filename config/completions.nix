{
  plugins.cmp-nvim-lsp.enable = true;
  plugins.cmp_luasnip.enable = true;
  plugins.cmp-path.enable = true;
  plugins.cmp-buffer.enable = true;
  plugins.cmp-cmdline.enable = true;
  plugins.cmp-git.enable = true;
  plugins.copilot-cmp.enable = true;
  plugins.copilot-lua = {
    enable = true;
    panel = {
      enabled = false;
      layout.position = "bottom";
    };
    suggestion = {
      enabled = false;
      autoTrigger = false;
      keymap.accept = "<C-l>";
    };
  };
  plugins.nvim-cmp = {
    enable = true;
    preselect = "None";
    autoEnableSources = true;
    experimental = {ghost_text = true;};
    snippet = {expand = "luasnip";};
    window = {
      documentation.border = "rounded";
      documentation.winhighlight = "Normal:Pmenu,CursorLine:PmenuSel,Search:None";
      completion = {
        colOffset = -3;
        sidePadding = 0;
        winhighlight = "Normal:Pmenu,CursorLine:PmenuSel,Search:None";
        border = "rounded";
      };
    };
    formatting.fields = ["kind" "abbr" "menu"];
    formatting.format = ''
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
    '';
    sources = [
      {name = "copilot";}
      {name = "nvim_lsp";}
      {name = "luasnip";}
      {name = "otter";}
      {name = "path";}
      {name = "buffer";}
      {name = "git";}
    ];
    mapping = {
      "<C-Space>" = "cmp.mapping.complete()";
      "<C-e>" = "cmp.mapping.close()";
      "<C-f>" = "cmp.mapping.scroll_docs(4)";
      "<C-b>" = "cmp.mapping.scroll_docs(-4)";
      "<CR>" = "cmp.mapping.confirm({ select = true })";
      "<C-p>" = {
        action = ''
          function(fallback)
            local luasnip = require 'luasnip'
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
          end
        '';
        modes = ["i" "s"];
      };
      "<C-n>" = {
        action = ''
          function(fallback)
            local luasnip = require 'luasnip'
            local check_backspace = function()
                local col = vim.fn.col "." - 1
                return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
            end
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expandable() then
              luasnip.expand()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            elseif check_backspace() then
              fallback()
            else
              fallback()
            end
          end
        '';
        modes = ["i" "s"];
      };
    };
  };
  plugins.neogen = {
    enable = true;
    enablePlaceholders = true;
    snippetEngine = "luasnip";
    languages = {
      python = {template = {annotation_convention = "numpydoc";};};
      typescript = {template = {annotation_convention = "tsdoc";};};
      typescriptreact = {template = {annotation_convention = "tsdoc";};};
    };
  };

  extraConfigLua = ''
    require("nvim-devdocs").setup()

    local cmp = require('cmp')
    cmp.setup.cmdline('/', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    })

    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
        {
          name = 'cmdline',
          option = {
            ignore_cmds = { 'Man', '!' }
          }
        }
      })
    })
  '';
}
