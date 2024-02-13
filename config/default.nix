{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./autocmds.nix
    ./plugins.nix
    ./treesitter.nix
    ./bufferline.nix
    ./git.nix
    ./lualine.nix
    ./lsp.nix
    ./dap.nix
    ./formatter.nix
    ./linter.nix
    ./snippets.nix
    ./completions.nix
    ./alpha.nix
    ./telescope.nix
    ./themes.nix
    ./keymaps.nix
    ./whichkey.nix
  ];

  clipboard = {
    register = "unnamedplus";
    providers = {
      wl-copy = { enable = true; };
    };
  };

  editorconfig.enable = true;

}
