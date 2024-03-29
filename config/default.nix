{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./autocmds.nix
    ./treesitter/treesitter.nix
    ./bars
    ./ui/incline.nix
    ./misc/mini.nix
    ./git
    ./lsp/lsp.nix
    ./debuggers
    ./lsp/formatter.nix
    ./lsp/linter.nix
    ./completions
    ./ai
    ./dashboard
    ./ui/telescope.nix
    ./ui/folding.nix
    ./themes
    ./keymaps.nix
    ./plugins.nix
    ./literate/literate.nix
    ./whichkey.nix
  ];

  clipboard = {
    register = "unnamedplus";
    providers = {wl-copy = {enable = true;};};
  };

  editorconfig.enable = true;
}
