{
  plugins.lsp = {
    enable = true;
    servers = {
      astro = {enable = true;};
      bashls = {enable = true;};
      dockerls = {enable = true;};
      eslint = {enable = true;};
      gopls = {enable = true;};
      hls = {enable = true;};
      jsonls = {enable = true;};
      julials = {enable = true;};
      ltex = {
        enable = true;
        settings.checkFrequency = "save";
      };
      texlab = {enable = true;};
      marksman = {enable = true;};
      nil-ls = {enable = true;};
      # Python
      pyright = {enable = true;};
      ruff-lsp = {
        enable = false;
        extraOptions = {
          init_options = {
            settings = {
              fixAll = false;
              organizeImports = false;
            };
          };
        };
      };
      ts-ls = {enable = true;};
      lua-ls = {enable = true;};
      rust-analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };
      svelte = {enable = true;};
      tailwindcss = {enable = true;};
      typst-lsp = {enable = true;};
      # vscode extracted
      cssls = {enable = true;};
      html = {enable = true;};
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

  # Custom diagnostic signs for LSP
  extraConfigLua = builtins.readFile ./diagnostic_signs.lua;
}
