{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./autocmds.nix
    ./treesitter/treesitter.nix
    ./bars/tabby.nix
    ./ui/incline.nix
    ./misc/mini.nix
    ./git/git.nix
    ./bars/lualine.nix
    ./lsp/lsp.nix
    ./debuggers/dap.nix
    ./lsp/formatter.nix
    ./lsp/linter.nix
    ./completions/snippets.nix
    ./completions/completions.nix
    ./ai
    ./dashboard/alpha.nix
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
