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
  };
}
