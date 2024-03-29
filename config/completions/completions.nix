{
  plugins.cmp-nvim-lsp.enable = true;
  plugins.cmp_luasnip.enable = true;
  plugins.cmp-path.enable = true;
  plugins.cmp-buffer.enable = true;
  plugins.cmp-cmdline.enable = true;
  plugins.cmp-git.enable = true;
  plugins.copilot-lua = {
    enable = true;
    panel = {
      enabled = false;
      layout.position = "bottom";
    };
    suggestion = {
      enabled = true;
      autoTrigger = true;
      keymap = {
        accept = "<C-l>";
        next = "<A-n>";
        prev = "<A-p>";
      };
    };
  };
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings = {
      preselect = "None";
      experimental = {ghost_text = false;};
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
      formatting.format = builtins.readFile ./cmp_format.lua;
      sources = [
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
        "<CR>" = "cmp.mapping.confirm({ select = false })";
        "<C-p>" = ''
          cmp.mapping(
          function(fallback)
            local luasnip = require 'luasnip'
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
          end, {'i', 's'})'';
        "<C-n>" = ''
          cmp.mapping(
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
          end, {'i', 's'})'';
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

  extraConfigLua = builtins.readFile ./cmp.lua;
}
