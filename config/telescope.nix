{
  plugins.telescope = {
    enable = true;
    keymaps = {
      "<leader>ff" = {
        action = "git_files";
        desc = "Telescope Git Files";
      };
      "<leader>fg" = {
        action = "live_grep";
        desc = "Telescope Live Grep";
      };
    };
  };
}
