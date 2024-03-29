{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./autocmds.nix
    ./treesitter/treesitter.nix
    ./bars
    ./ui/incline.nix
    ./misc
    ./git
    ./lsp
    ./debuggers
    ./completions
    ./ai
    ./dashboard
    ./ui/telescope.nix
    ./ui/folding.nix
    ./themes
    ./keymaps.nix
    ./plugins.nix
    ./literate
    ./whichkey.nix
  ];

  clipboard = {
    register = "unnamedplus";
    providers = {wl-copy = {enable = true;};};
  };

  editorconfig.enable = true;
}
