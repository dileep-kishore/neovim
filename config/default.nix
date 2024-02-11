{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./bufferline.nix
    ./lualine.nix
    # ./lsp.nix
    ./themes.nix
  ];

  clipboard = {
    register = "unnamedplus";
    providers = {
      wl-copy = { enable = true; };
    };
  };

}
