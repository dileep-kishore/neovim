{
  colorschemes.catppuccin = {
    enable = false;
    settings = {
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
  };
}
