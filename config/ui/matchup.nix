{
  plugins.vim-matchup = {
    enable = true;
    settings = {
      surround_enabled = true;
      transmute_enabled = true;
      treesitter.enabled = true;
    };
  };
  extraConfigLua = builtins.readFile ./matchup.lua;
}
