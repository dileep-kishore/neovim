{ self, pkgs, ... }:
{
  plugins = {
    tmux-navigator = {
      enable = true;
    };
  };

  extraPlugins = with pkgs.vimPlugins; [
    {
      plugin = nvim-hlslens;
      config = ''lua require("hlslens").setup()'';
    }
  ];
}
