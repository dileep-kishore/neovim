{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./autocmds.nix
    ./treesitter.nix
    ./bufferline.nix
    ./mini.nix
    ./git.nix
    ./lualine.nix
    ./lsp.nix
    ./dap.nix
    ./formatter.nix
    ./linter.nix
    ./snippets.nix
    ./completions.nix
    ./gpt.nix
    ./alpha.nix
    ./telescope.nix
    ./folding.nix
    ./themes.nix
    ./keymaps.nix
    ./plugins.nix
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
