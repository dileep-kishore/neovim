{
  plugins.lsp = {
    enable = true;
    servers = {
      astro = {enable = false;};
      bashls = {enable = true;};
      dockerls = {enable = true;};
      eslint = {enable = true;};
      gopls = {enable = true;};
      jsonls = {enable = true;};
      ltex = {
        enable = true;
        settings.checkFrequency = "save";
      };
      texlab = {enable = true;};
      marksman = {enable = true;};
      nil_ls = {enable = true;};
      # Python
      pyright = {enable = true;};
      ruff_lsp = {
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
      ts_ls = {enable = true;};
      lua_ls = {enable = true;};
      rust_analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };
      svelte = {enable = true;};
      tailwindcss = {enable = true;};
      typst_lsp = {enable = true;};
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
