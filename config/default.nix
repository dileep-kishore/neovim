{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./treesitter.nix
    ./bufferline.nix
    ./lualine.nix
    ./lsp.nix
    ./completions.nix
    ./snippets.nix
    ./telescope.nix
    ./themes.nix
  ];

  clipboard = {
    register = "unnamedplus";
    providers = {
      wl-copy = { enable = true; };
    };
  };

}
