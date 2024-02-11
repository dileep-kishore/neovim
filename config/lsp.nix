{
  plugins.lsp = {
    enable = true;
    servers = {
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
}
