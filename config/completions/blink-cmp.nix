{
  plugins.blink-cmp = {
    enable = true;
    setupLspCapabilities = true;
    settings = {
      appearance = {
        nerd_font_variant = "normal";
      };
      keymap = {
        preset = "enter";
        "<Tab>" = [];
        "<S-Tab>" = [];
        "<C-p>" = ["snippet_backward" "select_prev" "fallback_to_mappings"];
        "<C-n>" = ["snippet_forward" "select_next" "fallback_to_mappings"];
      };
      signature = {
        enabled = false;
      };
      cmdline = {
        enabled = true;
        keymap = {preset = "inherit";};
        completion = {
          list.selection.preselect = false;
          menu = {auto_show = true;};
          ghost_text = {enabled = false;};
        };
      };
      completion = {
        list.selection.preselect = false;
        menu = {
          border = "rounded";
          winhighlight = "Normal:Pmenu,CursorLine:PmenuSel,Search:None";
        };
        documentation = {
          auto_show = true;
          window.border = "rounded";
        };
        ghost_text.enabled = false;
        accept = {
          auto_brackets = {
            enabled = false;
            semantic_token_resolution = {
              enabled = true;
            };
          };
        };
      };
      sources = {
        default = ["lsp" "snippets" "path" "buffer"];
      };
    };
  };
}
