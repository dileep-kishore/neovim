{
  plugins.telescope = {
    enable = true;
    extraOptions = {
      defaults = {
        path_display = [ "truncate" ];
        sorting_strategy = "ascending";
        layout_config = {
          horizontal = { prompt_position = "top"; };
        };
      };
      pickers = {
        find_files = { theme = "dropdown"; };
        git_files = { theme = "dropdown"; };
        fd = { theme = "dropdown"; };
        buffers = { theme = "dropdown"; };
        marks = { theme = "dropdown"; };
        registers = { theme = "dropdown"; };
        jumplist = { theme = "dropdown"; };
        git_branches = { theme = "dropdown"; };
        git_commits = { theme = "dropdown"; };
        live_grep = { theme = "ivy"; };
        current_buffer_fuzzy_find = { theme = "ivy"; };
        help_tags = { theme = "dropdown"; };
        man_pages = { theme = "ivy"; };
        keymaps = { theme = "dropdown"; };
        vim_options = { theme = "dropdown"; };
        commands = { theme = "dropdown"; };
      };
    };
    extensions = {
      fzf-native = {
        enable = true;
        caseMode = "smart_case";
      };
      project-nvim = {
        enable = true;
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
      "<leader>th" = {
        action = "help_tags";
        desc = "Telescope find help";
      };
      "<leader>tm" = {
        action = "man_pages";
        desc = "Telescope Man Pages";
      };
      "<leader>tk" = {
        action = "keymaps";
        desc = "Telescope Keymaps";
      };
      "<leader>to" = {
        action = "vim_options";
        desc = "Telescope Vim options";
      };
      "<leader>tc" = {
        action = "commands";
        desc = "Telescope Commands";
      };
      "<leader>gb" = {
        action = "git_branches";
        desc = "Telescope git branches";
      };
      "<leader>gC" = {
        action = "git_commits";
        desc = "Telescope git commits";
      };
    };
  };
}
