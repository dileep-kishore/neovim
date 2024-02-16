{ self, pkgs, ... }:
let
  hlchunk = pkgs.vimUtils.buildVimPlugin {
    pname = "hlchunk.nvim";
    version = "2023-12-10";
    src = builtins.fetchGit {
      url = "https://github.com/shellRaining/hlchunk.nvim.git";
      ref = "main";
      rev = "882d1bc86d459fa8884398223c841fd09ea61b6b";
    };
    meta.homepage = "https://github.com/shellRaining/hlchunk.nvim";
  };
  devdocs-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "nvim-devdocs";
    version = "2023-12-22";
    src = builtins.fetchGit {
      url = "https://github.com/luckasRanarison/nvim-devdocs.git";
      ref = "master";
      rev = "521d24661ffe6d1ba025debea2675c765a9c1ee1";
    };
    meta.homepage = "https://github.com/luckasRanarison/nvim-devdocs";
  };
in
{
  plugins = {
    nvim-autopairs = {
      enable = true;
      checkTs = true;
    };
    tmux-navigator.enable = true;
    nvim-tree = {
      enable = true;
      diagnostics = { enable = true; };
      git = { enable = true; };
      renderer.indentMarkers.enable = true;
    };
    trouble.enable = true;
    todo-comments = {
      enable = true;
      highlight = {
        before = "fg";
        after = "fg";
        keyword = "bg";
      };
    };
    comment-nvim.enable = true;
    project-nvim.enable = true;
    surround.enable = true;
    toggleterm = {
      enable = true;
      direction = "float";
      floatOpts = { border = "single"; };
      openMapping = "<C-A-t>";
      terminalMappings = true;
    };
    illuminate.enable = true;
    indent-blankline = {
      enable = true;
      indent.char = "¦";
      whitespace.removeBlanklineTrail = true;
      scope = {
        enabled = false;
        showEnd = false;
        showStart = false;
      };
    };
    rainbow-delimiters = { enable = true; };
    leap = {
      enable = true;
      addDefaultMappings = true;
      caseSensitive = false;
    };
    notify = {
      enable = true;
      level = "info";
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
    better-escape = {
      enable = true;
      keys = "<Esc>";
      mapping = [ "jk" ];
    };
    nvim-bqf.enable = true;
    nvim-colorizer.enable = true;
    marks.enable = true;
    markdown-preview = {
      enable = true;
      theme = "dark";
    };
    persistence.enable = true;
  };

  extraPackages = with pkgs; [
    eslint_d
    fd
    hadolint
    isort
    lazygit
    mypy
    nixfmt
    nodePackages.jsonlint
    nodePackages.prettier
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
    lspkind-nvim
    zen-mode-nvim
    twilight-nvim
    otter-nvim
    bufdelete-nvim
    hlchunk
    devdocs-nvim
    {
      plugin = scope-nvim;
      config = "lua require('scope').setup()";
    }
    {
      plugin = nvim-hlslens;
      config = ''lua require("hlslens").setup()'';
    }
    {
      plugin = nvim-spectre;
      config = "lua require('spectre').setup()";
    }
    {
      plugin = harpoon2;
      config = "lua require('harpoon').setup()";
    }
    {
      plugin = tint-nvim;
      config = ''lua require("tint").setup()'';
    }
    {
      plugin = octo-nvim;
      config = ''lua require("octo").setup()'';
    }
    {
      plugin = headlines-nvim;
      config = "lua require('headlines').setup()";
    }
    {
      plugin = ChatGPT-nvim;
      config = "lua require('chatgpt').setup()";
    }
  ];
}
