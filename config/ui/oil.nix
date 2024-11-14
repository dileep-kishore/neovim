{
  plugins.oil = {
    enable = true;
    settings = {
      default_file_explorer = true;
      delete_to_trash = true;
      prompt_save_on_select_new_entry = true;
      skip_confirm_for_simple_edits = true;
      keymaps = {
        "<C-x>" = "actions.select_split";
        "<C-v>" = "actions.select_vsplit";
      };
      columns = ["icon"];
      float = {
        border = "rounded";
        max_height = 45;
        max_width = 80;
        preview_split = "above";
        override = ''
          function(conf)
             local opts = {
               zindex = 80,
             }
             return vim.tbl_deep_extend("force", conf, opts)
          end
        '';
      };
      preview = {
        border = "rounded";
        max_height = 45;
        max_width = 80;
        override = ''
          function(conf)
             local opts = {
               zindex = 80,
             }
             return vim.tbl_deep_extend("force", conf, opts)
          end
        '';
      };
      progress = {
        border = "rounded";
        max_height = 45;
        max_width = 80;
        override = ''
          function(conf)
             local opts = {
               zindex = 80,
             }
             return vim.tbl_deep_extend("force", conf, opts)
          end
        '';
      };
    };
  };
}
