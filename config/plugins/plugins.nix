{
  plugins = {
    web-devicons.enable = true;
    spider = {
      enable = true;
      skipInsignificantPunctuation = true;
      keymaps.motions = {
        b = "b";
        e = "e";
        ge = "ge";
        w = "w";
      };
    };
    nvim-autopairs = {
      enable = true;
      settings.checkTs = true;
    };
    tmux-navigator.enable = true;
    trouble = {
      enable = true;
      settings = {};
    };
    todo-comments = {
      enable = true;
      settings = {
        mergeKeywords = true;
        gui_style.fg = "BOLD";
        highlight = {
          before = "";
          after = "";
          keyword = "wide_fg";
        };
        keywords = {
          QUESTION = {icon = "";};
        };
      };
    };
    comment.enable = true;
    sleuth.enable = true;
    toggleterm = {
      enable = true;
      settings = {
        direction = "float";
        floatOpts = {border = "single";};
        openMapping = "<C-A-t>";
        terminalMappings = true;
      };
    };
    illuminate = {
      enable = true;
      underCursor = false;
      filetypesDenylist = ["qf" "help" "grapple" "Trouble"];
    };
    navic = {
      enable = true;
      settings = {
        highlight = true;
        lsp.autoAttach = true;
      };
    };
    yanky = {
      enable = true;
      settings = {
        picker.telescope = {
          enable = false;
          useDefaultMappings = true;
        };
        systemClipboard.syncWithRing = true;
      };
    };
    refactoring.enable = true;
    better-escape = {
      enable = true;
      settings = {
        default_mappings = false;
        mappings = {
          c = {
            j = {
              k = "<Esc>";
            };
          };
          i = {
            j = {
              k = "<Esc>";
            };
          };
          s = {
            j = {
              k = "<Esc>";
            };
          };
          v = {
            j = {
              k = "<Esc>";
            };
          };
        };
      };
    };
    nvim-bqf.enable = true;
    marks.enable = true;
    markdown-preview = {
      enable = true;
      settings.theme = "dark";
    };
    otter = {
      enable = true;
      autoActivate = true;
    };
    cloak = {
      enable = true;
    };
    git-conflict = {
      enable = true;
      settings = {
        default_commands = true;
        default_mappings = true;
      };
    };
  };
}
