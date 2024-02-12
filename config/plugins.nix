{ self, pkgs, ... }:
{
  plugins = {
    tmux-navigator = {
      enable = true;
    };
    nvim-tree = {
      enable = true;
      diagnostics = {
        enable = true;
      };
      git = {
        enable = true;
      };
      renderer.indentMarkers.enable = true;
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
    ruff
    rustfmt
    shfmt
    stylelint
    stylua
    typstfmt
    vale
  ];

  extraPlugins = with pkgs.vimPlugins; [
    friendly-snippets
    {
      plugin = nvim-hlslens;
      config = ''lua require("hlslens").setup()'';
    }
  ];
}
