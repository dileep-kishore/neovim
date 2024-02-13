{ self, pkgs, ... }:
{
  plugins = {
    nvim-autopairs = {
      enable = true;
      checkTs = true;
    };
    tmux-navigator.enable = true;
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
    trouble.enable = true;
    todo-comments.enable = true;
    comment-nvim.enable = true;
    project-nvim.enable = true;
    surround.enable = true;
    toggleterm = {
      enable = true;
      direction = "float";
      floatOpts = {
        border = "single";
      };
      openMapping = "<leader>tt";
      terminalMappings = true;
    };
    illuminate.enable = true;
    indent-blankline = {
      enable = true;
      scope = {
        enabled = false;
        showEnd = false;
      };
    };
    rainbow-delimiters = {
      enable = true;
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
    python311Packages.flake8
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
    {
      plugin = lsp_signature-nvim;
      config = ''lua require "lsp_signature".setup()'';
    }
  ];
}
