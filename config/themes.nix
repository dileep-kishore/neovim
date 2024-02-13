{
  colorschemes.catppuccin = {
    enable = true;
    flavour = "mocha";
    disableBold = false;
    disableItalic = false;
    background.dark = "mocha";
    background.light = "latte";
    styles = {
      functions = [ "italic" ];
      types = [ "italic" ];
    };
    integrations = {
      alpha = true;
      dap = {
        enable_ui = true;
        enabled = true;
      };
      cmp = true;
      fidget = true;
      flash = true;
      gitsigns = true;
      harpoon = true;
      headlines = true;
      illuminate = {
        enabled = true;
        lsp = true;
      };
      indent_blankline = {
        enabled = true;
        colored_indent_levels = true;
      };
      leap = true;
      lsp_saga = true;
      lsp_trouble = true;
      markdown = true;
      mason = true;
      mini = {
        enabled = true;
      };
      native_lsp = {
        enabled = true;
      };
      neogit = true;
      neotest = true;
      noice = true;
      notify = true;
      nvimtree = true;
      octo = true;
      overseer = true;
      rainbow_delimiters = true;
      telescope = {
        enabled = true;
      };
      symbols_outline = true;
      which_key = true;
    };
  };

  # Custom theming for Telescope
  extraConfigLua = ''
    local colors = require("catppuccin.palettes").get_palette()
    local TelescopeColor = {
    	TelescopeMatching = { fg = colors.flamingo },
    	TelescopeSelection = { fg = colors.text, bg = colors.surface0, bold = true },

    	TelescopePromptPrefix = { bg = colors.surface0 },
    	TelescopePromptNormal = { bg = colors.surface0 },
    	TelescopeResultsNormal = { bg = colors.mantle },
    	TelescopePreviewNormal = { bg = colors.mantle },
    	TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
    	TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
    	TelescopePreviewBorder = { bg = colors.mantle, fg = colors.mantle },
    	TelescopePromptTitle = { bg = colors.pink, fg = colors.mantle },
    	TelescopeResultsTitle = { fg = colors.mantle },
    	TelescopePreviewTitle = { bg = colors.green, fg = colors.mantle },
    }

    for hl, col in pairs(TelescopeColor) do
    	vim.api.nvim_set_hl(0, hl, col)
    end
  '';
}
