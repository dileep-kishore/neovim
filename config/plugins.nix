{
  self,
  pkgs,
  ...
}: let
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
  modes-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "nvim-modes";
    version = "2023-12-10";
    src = builtins.fetchGit {
      url = "https://github.com/mvllow/modes.nvim.git";
      ref = "main";
      rev = "4035a46aaabe43faf1b54740575af9dd5bb03809";
    };
    meta.homepage = "https://github.com/mvllow/modes.nvim";
  };
  incline-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "nvim-incline";
    version = "2024-02-28";
    src = builtins.fetchGit {
      url = "https://github.com/b0o/incline.nvim.git";
      ref = "main";
      rev = "2f5f6094089b29ee1e626cd9459fb42ce249e191";
    };
    meta.homepage = "https://github.com/b0o/incline.nvim";
  };
in {
  plugins = {
    nvim-autopairs = {
      enable = true;
      checkTs = true;
    };
    tmux-navigator.enable = true;
    oil = {
      enable = true;
      defaultFileExplorer = true;
      deleteToTrash = false;
      promptSaveOnSelectNewEntry = true;
      skipConfirmForSimpleEdits = true;
      keymaps = {"<C-x>" = "actions.select_split";};
      columns = {icon.enable = true;};
      float = {
        border = "rounded";
        maxHeight = 60;
        maxWidth = 60;
      };
      preview = {
        border = "rounded";
        maxHeight = 60;
        maxWidth = 60;
      };
      progress = {
        border = "rounded";
        maxHeight = 60;
        maxWidth = 60;
      };
    };
    trouble.enable = true;
    todo-comments = {
      enable = true;
      mergeKeywords = true;
      highlight = {
        before = "";
        after = "fg";
        keyword = "wide";
      };
      keywords = {
        QUESTION = {icon = "";};
      };
    };
    comment-nvim.enable = true;
    project-nvim.enable = true;
    toggleterm = {
      enable = true;
      direction = "float";
      floatOpts = {border = "single";};
      openMapping = "<C-A-t>";
      terminalMappings = true;
    };
    illuminate = {
      enable = true;
      underCursor = false;
    };
    indent-blankline = {
      enable = true;
      indent.char = "│";
      whitespace.removeBlanklineTrail = true;
      scope = {
        enabled = false;
        showEnd = false;
        showStart = false;
      };
      exclude.filetypes = [
        "help"
        "alpha"
        "dashboard"
        "neo-tree"
        "Trouble"
        "trouble"
        "lazy"
        "notify"
        "toggleterm"
        "lazyterm"
        "lspinfo"
        "packer"
        "checkhealth"
        "help"
        "man"
        "gitcommit"
        "TelescopePrompt"
        "TelescopeResults"
        "\'\'"
      ];
    };
    leap = {
      enable = true;
      addDefaultMappings = true;
      caseSensitive = false;
    };
    notify = {
      enable = true;
      level = "info";
      backgroundColour = "#191724";
    };
    navic = {
      enable = true;
      highlight = true;
      lsp.autoAttach = true;
    };
    noice = {
      enable = true;
      presets = {
        bottom_search = false;
        command_palette = true;
        long_message_to_split = false;
        lsp_doc_border = true;
        inc_rename = true;
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
      mapping = ["jk"];
    };
    nvim-bqf.enable = true;
    nvim-colorizer.enable = true;
    marks.enable = true;
    markdown-preview = {
      enable = true;
      settings.theme = "dark";
    };
    persistence.enable = true;
    specs = {
      enable = true;
      min_jump = 10;
      increment = 10;
      delay = 10;
      width = 20;
      color = "#94e2d5";
      fader.builtin = "pulse_fader";
      resizer.builtin = "shrink_resizer";
    };
    vim-matchup = {
      enable = true;
      enableSurround = true;
      enableTransmute = true;
      treesitterIntegration.enable = true;
    };
  };

  extraPython3Packages = ps:
    with ps; [
      jupyter-client
      pynvim
      pyperclip
      nbformat
    ];

  extraPackages = with pkgs; [
    alejandra
    eslint_d
    fd
    hadolint
    imagemagick
    isort
    lazygit
    mypy
    nodePackages.jsonlint
    nodePackages.prettier
    quarto
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
    lualine-nvim
    tabby-nvim
    alpha-nvim
    lazygit-nvim
    lspkind-nvim
    zen-mode-nvim
    twilight-nvim
    iron-nvim
    otter-nvim
    devdocs-nvim
    modes-nvim
    incline-nvim
    headlines-nvim
    {
      plugin = tint-nvim;
      config = "lua require('tint').setup()";
    }
    {
      plugin = nvim-surround;
      config = "lua require('nvim-surround').setup({move_cursor=false})";
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
      plugin = octo-nvim;
      config = ''lua require("octo").setup()'';
    }
    {
      plugin = ChatGPT-nvim;
      config = "lua require('chatgpt').setup()";
    }
    {
      plugin = highlight-undo-nvim;
      config = "lua require('highlight-undo').setup()";
    }
  ];
}
