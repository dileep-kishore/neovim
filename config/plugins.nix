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
    fd
    hadolint
    isort
    lazygit
    nixfmt
    nodePackages.jsonlint
    nodePackages.prettier
    pylint
    ripgrep
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
    plenary-nvim
    friendly-snippets
    lazygit-nvim
    {
      plugin = nvim-hlslens;
      config = ''lua require("hlslens").setup()'';
    }
  ];
}
