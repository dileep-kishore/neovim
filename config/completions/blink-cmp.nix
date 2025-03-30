{
  plugins.blink-copilot.enable = true;
  plugins.blink-emoji.enable = true;
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
        default = ["copilot" "lsp" "snippets" "path" "buffer" "avante_commands" "avante_mentions" "avante_files" "emoji"];
        providers = {
          copilot = {
            async = true;
            module = "blink-copilot";
            name = "copilot";
            score_offset = 100;
            opts = {
              max_completions = 3;
              kind = "Copilot";
              kind_icon = " ";
              kind_hl = "CmpItemKindCopilot";
            };
          };
          emoji = {
            module = "blink-emoji";
            name = "Emoji";
            score_offset = 15;
            opts = {
              insert = true;
            };
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
}
