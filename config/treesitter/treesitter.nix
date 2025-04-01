{
  plugins.treesitter = {
    enable = true;
    settings = {
      highlight.enable = true;
      incremental_selection = {
        enable = true;
        keymaps = {
          init_selection = "<CR>";
          node_incremental = "<CR>";
          scope_incremental = false;
          node_decremental = "<Backspace>";
        };
      };
    };
  };
}
