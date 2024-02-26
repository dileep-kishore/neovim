{
  colorschemes.rose-pine = {
    enable = true;
    style = "main";
    boldVerticalSplit = false;
    dimInactive = true;
    highlightGroups = {
      "@type" = {bold = true;};
      "@variable" = {italic = false;};
      "@keyword" = {italic = true;};
      "@keyword.conditional" = {italic = true;};
      "@function" = {italic = true;};
      "@function.method.call" = {italic = true;};
      EndOfBuffer = {
        fg = "base";
        bg = "base";
      };
      NotifyERRORBorder = {
        bg = "base";
      };
      NotifyWARNBorder = {
        bg = "base";
      };
      NotifyINFOBorder = {
        bg = "base";
      };
      NotifyDEBUGBorder = {
        bg = "base";
      };
      NotifyTRACEBorder = {
        bg = "base";
      };
      NormalFloat = {
        bg = "base";
      };
      Float = {
        bg = "base";
      };
      Pmenu = {
        bg = "base";
      };
      FloatBorder = {
        fg = "highlight_high";
        bg = "base";
      };
      CmpItemMenu = {
        fg = "rose";
        bg = "NONE";
        italic = true;
      };
      CmpItemKindCopilot = {
        fg = "pine";
      };
      TelescopeBorder = {
        fg = "overlay";
        bg = "overlay";
      };
      TelescopeNormal = {
        fg = "subtle";
        bg = "overlay";
      };
      TelescopeSelection = {
        fg = "text";
        bg = "highlight_med";
      };
      TelescopeSelectionCaret = {
        fg = "love";
        bg = "highlight_med";
      };
      TelescopeMultiSelection = {
        fg = "text";
        bg = "highlight_high";
      };
      TelescopeTitle = {
        fg = "base";
        bg = "love";
      };
      TelescopePromptTitle = {
        fg = "base";
        bg = "pine";
      };
      TelescopePreviewTitle = {
        fg = "base";
        bg = "iris";
      };
      TelescopePromptNormal = {
        fg = "text";
        bg = "surface";
      };
      TelescopePromptBorder = {
        fg = "surface";
        bg = "surface";
      };
    };
  };
  colorschemes.catppuccin = {
    enable = false;
    flavour = "mocha";
    disableBold = false;
    disableItalic = false;
    background.dark = "mocha";
    background.light = "latte";
    styles = {
      functions = ["italic"];
      types = ["italic"];
    };
    integrations = {
      alpha = true;
      barbecue = {
        alt_background = false;
        bold_basename = true;
        dim_context = false;
        dim_dirname = true;
      };
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
      symbols_outline = true;
      which_key = true;
    };
  };

  # Custom theming for Telescope
  extraConfigLua = ''
  '';
}
