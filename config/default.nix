{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./autocmds.nix
    ./treesitter
    ./bars
    ./ui
    ./misc
    ./git
    ./lsp
    ./debuggers
    ./completions
    ./ai
    ./dashboard
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
