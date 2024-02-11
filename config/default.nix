{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./keymaps.nix
    ./autocmds.nix
    ./treesitter.nix
    ./bufferline.nix
    ./lualine.nix
    ./lsp.nix
    ./completions.nix
    ./snippets.nix
    ./telescope.nix
    ./themes.nix
    ./plugins.nix
  ];

  clipboard = {
    register = "unnamedplus";
    providers = {
      wl-copy = { enable = true; };
    };
  };

}
