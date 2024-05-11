{
  plugins = {
    nvim-autopairs = {
      enable = true;
      settings.checkTs = true;
    };
    tmux-navigator.enable = true;
    trouble.enable = true;
    todo-comments = {
      enable = true;
      mergeKeywords = true;
      highlight = {
        before = "";
        after = "fg";
        keyword = "wide";
      };
      keywords = {
        QUESTION = {icon = "";};
      };
    };
    comment.enable = true;
    sleuth.enable = true;
    project-nvim = {
      enable = true;
      enableTelescope = true;
    };
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
      highlight = true;
      lsp.autoAttach = true;
    };
    yanky = {
      enable = true;
      picker.telescope = {
        enable = true;
        useDefaultMappings = true;
      };
      systemClipboard.syncWithRing = true;
    };
    refactoring.enable = true;
    better-escape = {
      enable = true;
      keys = "<Esc>";
      mapping = ["jk"];
    };
    nvim-bqf.enable = true;
    nvim-colorizer.enable = true;
    marks.enable = true;
    markdown-preview = {
      enable = true;
      settings.theme = "dark";
    };
    vim-matchup = {
      enable = true;
      enableSurround = true;
      enableTransmute = true;
      treesitterIntegration.enable = true;
    };
  };
}
