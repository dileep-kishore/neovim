{
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native = {
        enable = true;
        caseMode = "smart_case";
      };
    };
    keymaps = {
      "<leader>ff" = {
        action = "find_files";
        desc = "Telescope Files";
      };
      "<leader>fg" = {
        action = "git_files";
        desc = "Telescope Git Files";
      };
      "<leader>fb" = {
        action = "buffers";
        desc = "Telescope Buffers";
      };
      "<leader>fd" = {
        action = "fd";
        desc = "Telescope fd";
      };
      "<leader>fm" = {
        action = "marks";
        desc = "Telescope marks";
      };
      "<leader>fr" = {
        action = "registers";
        desc = "Telescope registers";
      };
      "<leader>fj" = {
        action = "jumplist";
        desc = "Telescope jumplist";
      };
      "<leader>sg" = {
        action = "live_grep";
        desc = "Telescope Live Grep";
      };
      "<leader>sb" = {
        action = "current_buffer_fuzzy_find";
        desc = "Telescope search current buffer";
      };
    };
  };
}
