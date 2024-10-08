{
  plugins.telescope = {
    enable = true;
    settings = {
      defaults = {
        path_display = ["truncate"];
        sorting_strategy = "ascending";
        layout_config = {horizontal = {prompt_position = "top";};};
      };
      pickers = {
        find_files = {theme = "dropdown";};
        git_files = {theme = "dropdown";};
        fd = {theme = "dropdown";};
        buffers = {theme = "dropdown";};
        marks = {theme = "dropdown";};
        registers = {theme = "dropdown";};
        jumplist = {theme = "dropdown";};
        git_branches = {theme = "dropdown";};
        git_commits = {theme = "dropdown";};
        live_grep = {theme = "ivy";};
        current_buffer_fuzzy_find = {theme = "ivy";};
        help_tags = {theme = "dropdown";};
        man_pages = {theme = "ivy";};
        keymaps = {theme = "dropdown";};
        vim_options = {theme = "dropdown";};
        commands = {theme = "dropdown";};
      };
    };
    extensions = {
      fzf-native = {
        enable = true;
        settings.case_mode = "smart_case";
      };
      frecency = {
        enable = true;
        settings = {
          show_unindexed = true;
          default_workspace = "CWD";
        };
      };
      undo = {
        enable = true;
        settings.use_delta = true;
      };
    };
    keymaps = {
      "<leader>ff" = {
        action = "find_files";
        options.desc = "Telescope Files";
      };
      "<leader>fg" = {
        action = "git_files";
        options.desc = "Telescope Git Files";
      };
      "<leader>fd" = {
        action = "fd";
        options.desc = "Telescope fd";
      };
      "<leader>fm" = {
        action = "marks";
        options.desc = "Telescope marks";
      };
      "<leader>fr" = {
        action = "registers";
        options.desc = "Telescope registers";
      };
      "<leader>fj" = {
        action = "jumplist";
        options.desc = "Telescope jumplist";
      };
      "<leader>sg" = {
        action = "live_grep";
        options.desc = "Telescope Live Grep";
      };
      "<leader>sb" = {
        action = "current_buffer_fuzzy_find";
        options.desc = "Telescope search current buffer";
      };
      "<leader>th" = {
        action = "help_tags";
        options.desc = "Telescope find help";
      };
      "<leader>tm" = {
        action = "man_pages";
        options.desc = "Telescope Man Pages";
      };
      "<leader>tk" = {
        action = "keymaps";
        options.desc = "Telescope Keymaps";
      };
      "<leader>to" = {
        action = "vim_options";
        options.desc = "Telescope Vim options";
      };
      "<leader>tc" = {
        action = "commands";
        options.desc = "Telescope Commands";
      };
      "<leader>gC" = {
        action = "git_commits";
        options.desc = "Telescope git commits";
      };
    };
  };
  extraConfigLua = builtins.readFile ./telescope.lua;
}
