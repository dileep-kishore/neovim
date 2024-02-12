{
  plugins.treesitter = {
    enable = true;
  };
  plugins.ts-context-commentstring = {
    enable = true;
    skipTsContextCommentStringModule = true;
  };
  plugins.ts-autotag.enable = true;
  plugins.treesitter-context.enable = true;
  plugins.treesitter-textobjects = {
    enable = true;
    select = {
      enable = true;
      lookahead = true;
      keymaps = {
        "af" = { query = "@function.outer"; };
        "if" = { query = "@function.inner"; };
        "ac" = { query = "@class.outer"; };
        "ic" = { query = "@class.inner"; };
      };
    };
    swap = {
      enable = true;
      swapNext = {
        "<leader>pl" = {
          query = "@parameter.inner";
          desc = "Parameter swap next";
        };
      };
      swapPrevious = {
        "<leader>ph" = {
          query = "@parameter.inner";
          desc = "Parameter swap prev";
        };
      };
    };
    move = {
      enable = true;
      setJumps = true;
      gotoNextStart = {
        "]m" = { query = "@function.outer"; };
        "]c" = { query = "@class.outer"; };
      };
      gotoNextEnd = {
        "]M" = { query = "@function.outer"; };
        "]C" = { query = "@class.outer"; };
      };
      gotoPreviousStart = {
        "[m" = { query = "@function.outer"; };
        "[c" = { query = "@class.outer"; };
      };
      gotoPreviousEnd = {
        "[M" = { query = "@function.outer"; };
        "[C" = { query = "@class.outer"; };
      };
    };
  };
}
