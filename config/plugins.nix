{ self, pkgs, ... }:
{
  plugins = {
    tmux-navigator = {
      enable = true;
    };
  };

  extraPackages = with pkgs; [
    eslint_d
    hadolint
    isort
    nixfmt
    nodePackages.jsonlint
    nodePackages.prettier
    pylint
    rstcheck
    rustfmt
    shfmt
    stylelint
    typstfmt
    vale
  ];

  extraPlugins = with pkgs.vimPlugins; [
    {
      plugin = nvim-hlslens;
      config = ''lua require("hlslens").setup()'';
    }
  ];
}
