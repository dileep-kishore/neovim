{
  plugins.telescope = {
    enable = true;
    keymaps = {
      "<leader>ff" = {
        action = "git_files";
        desc = "Telescope Git Files";
      };
      "<leader>sg" = {
        action = "live_grep";
        desc = "Telescope Live Grep";
      };
    };
  };
}
