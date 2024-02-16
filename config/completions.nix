{
  plugins.cmp-nvim-lsp.enable = true;
  plugins.cmp_luasnip.enable = true;
  plugins.cmp-cmdline.enable = true;
  plugins.cmp-git.enable = true;
  plugins.copilot-lua = {
    enable = true;
    panel = {
      enabled = true;
      layout.position = "bottom";
    };
    suggestion = {
      enabled = true;
      autoTrigger = true;
      keymap.accept = "<C-l>";
    };
  };
  plugins.nvim-cmp = {
    enable = true;
    preselect = "None";
    autoEnableSources = true;
    experimental = {
      ghost_text = false;
    };
    snippet = {
      expand = "luasnip";
    };
    window = {
      documentation.border = "rounded";
      documentation.winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None";
      completion = {
        colOffset = -3;
        sidePadding = 0;
        winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None";
        border = "rounded";
      };
    };
    formatting.fields = [ "kind" "abbr" "menu" ];
    formatting.format = ''
      function(entry, vim_item)
        local colors = require("catppuccin.palettes").get_palette()
        -- vim.api.nvim_set_hl(0, 'FloatBorder', { link = 'Normal' })
        vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = colors.mauve, bg = "NONE", italic = true })
        local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
        local strings = vim.split(kind.kind, "%s", { trimempty = true })
        kind.kind = " " .. (strings[1] or "") .. " "
        kind.menu = "    (" .. (strings[2] or "") .. ")"
        return kind
      end
    '';
    sources = [
      { name = "nvim_lsp"; }
      { name = "luasnip"; }
      { name = "otter"; }
      { name = "path"; }
      { name = "buffer"; }
      { name = "cmdline"; }
      { name = "git"; }
    ];
    mapping = {
      "<C-Space>" = "cmp.mapping.complete()";
      "<C-d>" = "cmp.mapping.scroll_docs(-4)";
      "<C-e>" = "cmp.mapping.close()";
      "<C-f>" = "cmp.mapping.scroll_docs(4)";
      "<CR>" = "cmp.mapping.confirm({ select = false })";
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
        modes = [ "i" "s" ];
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
        modes = [ "i" "s" ];
      };
    };
  };
  plugins.neogen = {
    enable = true;
    enablePlaceholders = true;
    snippetEngine = "luasnip";
    languages = {
      python = {
        template = {
          annotation_convention = "numpydoc";
        };
      };
      typescript = {
        template = {
          annotation_convention = "tsdoc";
        };
      };
      typescriptreact = {
        template = {
          annotation_convention = "tsdoc";
        };
      };
    };
  };

  extraConfigLua = ''
    require("nvim-devdocs").setup()
  '';

}
