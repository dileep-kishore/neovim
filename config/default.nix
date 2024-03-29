{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./autocmds.nix
    ./plugins.nix
    ./keymaps
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
    ./literate
  ];

  clipboard = {
    register = "unnamedplus";
    providers = {wl-copy = {enable = true;};};
  };

  editorconfig.enable = true;
}
