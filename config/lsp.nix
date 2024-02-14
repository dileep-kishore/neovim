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
  plugins.lspsaga = {
    enable = true;
    ui.border = "rounded";
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

  # Custom diagnostic signs for LSP
  extraConfigLua = ''
    local signs = {
            { name = "DiagnosticSignError", text = "" },
            { name = "DiagnosticSignWarn", text = "" },
            { name = "DiagnosticSignHint", text = "" },
            { name = "DiagnosticSignInfo", text = "" },
        }

        for _, sign in ipairs(signs) do
            vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
        end

        local config = {
            -- enable virtual text
            virtual_text = true,
            -- show signs
            signs = {
                active = signs,
            },
            update_in_insert = true,
            underline = true,
            severity_sort = true,
            float = {
                focusable = false,
                style = "minimal",
                border = "rounded",
                source = "always",
                header = "",
                prefix = "",
            },
        }

        vim.diagnostic.config(config)
  '';
}
