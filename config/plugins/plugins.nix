{
  plugins = {
    lz-n.enable = true;
    nui.enable = true;
    repeat.enable = true;
    friendly-snippets.enable = true;
    web-devicons.enable = true;
    spider = {
      enable = false;
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
      lazyLoad.settings.event = "InsertEnter";
    };
    tmux-navigator.enable = true;
    trouble = {
      enable = true;
      settings = {};
      lazyLoad.settings.event = "DeferredUIEnter";
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
    illuminate = {
      enable = true;
      underCursor = false;
      filetypesDenylist = ["qf" "help" "grapple" "Trouble"];
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
    nvim-bqf = {
      enable = true;
    };
    marks = {
      enable = true;
    };
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
    grug-far = {
      enable = true;
      lazyLoad = {
        settings = {
          cmd = "GrugFar";
        };
      };
    };
    highlight-colors = {
      enable = true;
      settings = {
        render = "virtual";
        enable_tailwind = true;
        virtual_symbol = " ";
        virtual_symbol_suffix = "";
      };
    };
  };
}
