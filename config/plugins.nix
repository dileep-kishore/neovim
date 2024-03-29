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
  grapple-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "grapple-nvim";
    version = "2024-03-25";
    src = builtins.fetchGit {
      url = "https://github.com/cbochs/grapple.nvim.git";
      ref = "main";
      rev = "5d96868a6e9791b7a8ee51a9eef43fc408b9650e";
    };
    meta.homepage = "https://github.com/cbochs/grapple.nvim";
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
      settings = {
        defaultFileExplorer = true;
        deleteToTrash = false;
        promptSaveOnSelectNewEntry = true;
        skipConfirmForSimpleEdits = true;
        keymaps = {"<C-x>" = "actions.select_split";};
        columns = ["icon"];
        float = {
          border = "rounded";
          max_height = 45;
          max_width = 60;
          override = ''
            function(conf)
               local opts = {
                 zindex = 80,
               }
               return vim.tbl_deep_extend("force", conf, opts)
            end
          '';
        };
        preview = {
          border = "rounded";
          max_height = 45;
          max_width = 60;
          override = ''
            function(conf)
               local opts = {
                 zindex = 80,
               }
               return vim.tbl_deep_extend("force", conf, opts)
            end
          '';
        };
        progress = {
          border = "rounded";
          max_height = 45;
          max_width = 60;
          override = ''
            function(conf)
               local opts = {
                 zindex = 80,
               }
               return vim.tbl_deep_extend("force", conf, opts)
            end
          '';
        };
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
    comment.enable = true;
    sleuth.enable = true;
    project-nvim = {
      enable = true;
      enableTelescope = true;
    };
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
      enable = false;
      settings = {
        indent.char = "│";
        whitespace.remove_blankline_trail = true;
        scope = {
          enabled = false;
          show_end = true;
          show_start = true;
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
    };
    flash = {
      enable = true;
      continue = false;
      jump = {
        autojump = false;
        history = false;
        jumplist = true;
        nohlsearch = true;
      };
      label = {
        after = true;
        minPatternLength = 0;
        rainbow.enabled = true;
      };
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
    ssr-nvim
    iron-nvim
    otter-nvim
    modes-nvim
    incline-nvim
    headlines-nvim
    {
      plugin = grapple-nvim;
      config = "lua require('grapple').setup({scope='git_branch'})";
    }
    {
      plugin = devdocs-nvim;
      config = "lua require('nvim-devdocs').setup()";
    }
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
      plugin = octo-nvim;
      config = ''lua require("octo").setup()'';
    }
    {
      plugin = ChatGPT-nvim;
      config = "lua require('chatgpt').setup()";
    }
    {
      plugin = treesj;
      config = "lua require('treesj').setup({use_default_keymaps=false})";
    }
    {
      plugin = highlight-undo-nvim;
      config = "lua require('highlight-undo').setup()";
    }
  ];
}
