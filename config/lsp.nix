{
  plugins.lsp = {
    enable = true;
    servers = {
      astro = {
        enable = true;
      };
      bashls = {
        enable = true;
      };
      dockerls = {
        enable = true;
      };
      eslint = {
        enable = true;
      };
      gopls = {
        enable = true;
      };
      hls = {
        enable = true;
      };
      jsonls = {
        enable = true;
      };
      julials = {
        enable = true;
      };
      ltex = {
        enable = true;
      };
      texlab = {
        enable = true;
      };
      marksman = {
        enable = true;
      };
      rnix-lsp = {
        enable = true;
      };
      ruff-lsp = {
        enable = true;
        extraOptions = {
          init_options = {
            settings = {
              fixAll = false;
              organizeImports = false;
            };
          };
        };
      };
      tsserver = {
        enable = true;
      };
      lua-ls = {
        enable = true;
      };
      rust-analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };
      pyright = {
        enable = true;
      };
      svelte = {
        enable = true;
      };
      tailwindcss = {
        enable = true;
      };
      typst-lsp = {
        enable = true;
      };
      # vscode extracted
      cssls = {
        enable = true;
      };
      html = {
        enable = true;
      };
    };
    keymaps = {
      diagnostic = {
        "]d" = "goto_next";
        "[d" = "goto_prev";
      };
      lspBuf = {
        K = "hover";
        gD = "references";
        gd = "definition";
        gi = "implementation";
        gt = "type_definition";
      };
    };
  };
  plugins.lspkind = {
    enable = true;
    mode = "symbol_text";
    cmp = {
      enable = true;
    };
  };
  plugins.lspsaga = {
    enable = true;
    beacon.enable = true;
    implement = {
      enable = true;
      sign = false;
    };
    lightbulb = {
      enable = true;
      sign = true;
      virtualText = false;
    };
    outline = {
      layout = "float";
    };
    symbolInWinbar.enable = true;
  };
}
