{
  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "mocha";
      dim_inactive = {
        enabled = false;
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
      custom_highlights = ''
        function(colors)
            return {
                InclineNormal = { bg = colors.base },
                InclineNormalNC = { bg = colors.base },
                Pmenu = { bg = colors.base },
                Float = { bg = colors.base },
                FloatBorder = { bg = colors.base },
                NormalFloat = { bg = colors.base },
                ZenBg = { bg = colors.base },
                TreesitterContextLineNumber = { bg = colors.mantle },
                TreesitterContextBottom = { style = {} },
                TreesitterContextLineNumberBottom = { style = {} },
                CmpItemKindCodeium = { fg = colors.teal },
                ["@comment.note"] = { link = "Comment" },
                ["@comment.todo"] = { link = "Comment" },
                ["@comment.hint"] = { link = "Comment" },
                ["@comment.info"] = { link = "Comment" },
                ["@comment.error"] = { link = "Comment" },
                ["@comment.warning"] = { link = "Comment" }
            }
        end
      '';
      integrations = {
        alpha = true;
        dap = true;
        dap_ui = true;
        cmp = true;
        flash = true;
        gitsigns = true;
        harpoon = true;
        grug_far = true;
        illuminate = {
          enabled = true;
          lsp = true;
        };
        lsp_saga = true;
        lsp_trouble = true;
        markdown = true;
        mason = true;
        mini = {
          enabled = true;
          indentscope_color = "lavender";
        };
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
        nvim_surround = true;
        rainbow_delimiters = true;
        telescope = {
          enabled = true;
          # style = "nvchad";
        };
        treesitter = true;
        semantic_tokens = true;
        symbols_outline = true;
        which_key = true;
        treesitter_context = true;
        render_markdown = true;
      };
    };
  };
}
