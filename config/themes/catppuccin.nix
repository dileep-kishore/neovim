{
  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "mocha";
      # FIXME: This does not work
      dim_inactive = {
        enabled = true;
        shade = "dark";
        percentage = 0.15;
      };
      background = {
        dark = "mocha";
        light = "latte";
      };
      styles = {
        keywords = ["italic"];
        types = ["italic"];
        conditionals = ["italic"];
        loops = ["italic"];
        comments = ["italic"];
        functions = ["bold"];
      };
      # custom_highlights = {
      #   InclineNormal = {bg = "#1e1e2e";};
      #   InclineNormalNC = {bg = "#1e1e2e";};
      #   Pmenu = {bg = "#1e1e2e";};
      #   Float = {bg = "#1e1e2e";};
      #   FloatBorder = {bg = "#1e1e2e";};
      #   NormalFloat = {bg = "#1e1e2e";};
      #   TreesitterContext = {bg = "#181825";};
      #   TreesitterContextBottom = {style = {}; };
      #   TreesitterContextLineNumberBottom = {style = {};};
      # };
      custom_highlights = ''
        function(colors)
            return {
                InclineNormal = { bg = colors.base },
                InclineNormalNC = { bg = colors.base },
                Pmenu = { bg = colors.base },
                Float = { bg = colors.base },
                FloatBorder = { bg = colors.base },
                NormalFloat = { bg = colors.base },
                TreesitterContext = { bg = colors.mantle },
                TreesitterContextBottom = { style = {} },
                TreesitterContextLineNumberBottom = { style = {} },
            }
        end
      '';
      integrations = {
        alpha = true;
        dap = {
          enable_ui = true;
          enabled = true;
        };
        cmp = true;
        leap = true;
        gitsigns = true;
        harpoon = true;
        headlines = true;
        illuminate = {
          enabled = true;
          lsp = true;
        };
        lsp_saga = true;
        lsp_trouble = true;
        markdown = true;
        mason = true;
        mini = {enabled = true;};
        native_lsp = {
          enabled = true;
          inlay_hints.background = true;
        };
        navic.enabled = true;
        neogit = true;
        neotest = true;
        noice = true;
        notify = true;
        nvimtree = true;
        octo = true;
        ufo = true;
        overseer = true;
        rainbow_delimiters = true;
        telescope = {enabled = true;};
        treesitter = true;
        symbols_outline = true;
        which_key = true;
      };
    };
  };
}
