{
  plugins.vim-matchup = {
    enable = true;
    enableSurround = true;
    enableTransmute = true;
    treesitterIntegration.enable = true;
  };
  extraConfigLua = builtins.readFile ./matchup.lua;
}
