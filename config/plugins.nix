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
      openMapping = "<C-A-t>";
      terminalMappings = true;
    };
    illuminate.enable = true;
    indent-blankline = {
      enable = true;
      whitespace.removeBlanklineTrail = true;
      scope = {
        enabled = false;
        showEnd = false;
      };
    };
    rainbow-delimiters = {
      enable = true;
    };
    leap = {
      enable = true;
      addDefaultMappings = true;
      caseSensitive = false;
    };
    noice = {
      enable = true;
      presets = {
        bottom_search = false;
        command_palette = true;
        long_message_to_split = false;
        lsp_doc_border = true;
      };
      notify.enabled = true;
      messages.enabled = true;
    };
    yanky = {
      enable = true;
      picker.telescope = {
        enable = true;
        useDefaultMappings = true;
      };
      systemClipboard.syncWithRing = true;
    };
    refactoring.enable = true;
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
    vim-repeat
    friendly-snippets
    lazygit-nvim
    {
      plugin = nvim-hlslens;
      config = ''lua require("hlslens").setup()'';
    }
    {
      plugin = nvim-spectre;
      config = ''lua require('spectre').setup()'';
    }
    {
      plugin = harpoon2;
      config = ''lua require('harpoon').setup()'';
    }
  ];
}
