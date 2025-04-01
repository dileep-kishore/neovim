{
  plugins.vim-matchup = {
    enable = false;
    settings = {
      surround_enabled = 1;
      transmute_enabled = 1;
      treesitter.enabled = true;
    };
  };
  # extraConfigLua = builtins.readFile ./matchup.lua;
}
