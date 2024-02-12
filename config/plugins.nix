{ self, pkgs, ... }:
{
  plugins = {
    tmux-navigator = {
      enable = true;
    };
  };

  extraPackages = with pkgs; [
    isort
    nixfmt
    nodePackages.prettier
    shfmt
    rustfmt
    typstfmt
  ];

  extraPlugins = with pkgs.vimPlugins; [
    {
      plugin = nvim-hlslens;
      config = ''lua require("hlslens").setup()'';
    }
  ];
}
