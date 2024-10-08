{
  plugins.vim-matchup = {
    enable = false;
    enableSurround = true;
    enableTransmute = true;
    treesitterIntegration.enable = true;
  };
  # extraConfigLua = builtins.readFile ./matchup.lua;
}
