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
    ./formatter.nix
    ./linter.nix
    ./snippets.nix
    ./completions.nix
    ./alpha.nix
    ./telescope.nix
    ./themes.nix
    ./whichkey.nix
    ./plugins.nix
  ];

  clipboard = {
    register = "unnamedplus";
    providers = {
      wl-copy = { enable = true; };
    };
  };

  editorconfig.enable = true;

}
