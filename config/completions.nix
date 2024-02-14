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
      keymap.accept = "<Tab>";
    };
  };
  plugins.nvim-cmp = {
    enable = true;
    autoEnableSources = true;
    experimental = {
      ghost_text = true;
    };
    snippet = {
      expand = "luasnip";
    };
    window = {
      completion.border = "rounded";
      documentation.border = "rounded";
    };
    sources = [
      { name = "nvim_lsp"; }
      { name = "luasnip"; }
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
}
