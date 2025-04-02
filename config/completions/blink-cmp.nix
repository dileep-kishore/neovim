{
  plugins.blink-compat.enable = true;
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
        "<C-p>" = ["select_prev" "fallback_to_mappings"];
        "<C-n>" = ["select_next" "fallback_to_mappings"];
        "<C-k>" = ["snippet_forward" "fallback_to_mappings"];
        "<C-S-k>" = ["snippet_forward" "fallback_to_mappings"];
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
          ghost_text = {enabled = true;};
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
        ghost_text.enabled = true;
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
        default = ["lsp" "snippets" "path" "buffer" "neopyter" "avante_commands" "avante_mentions" "avante_files"];
        providers = {
          neopyter = {
            name = "Neopyter";
            module = "neopyter.blink";
          };
          avante_commands = {
            name = "avante_commands";
            module = "blink.compat.source";
          };
          avante_mentions = {
            name = "avante_mentions";
            module = "blink.compat.source";
          };
          avante_files = {
            name = "avante_files";
            module = "blink.compat.source";
          };
        };
      };
    };
  };
  extraConfigLua = builtins.readFile ./highlight-colors.lua;
}
