{
  plugins.oil = {
    enable = true;
    settings = {
      defaultFileExplorer = true;
      deleteToTrash = false;
      promptSaveOnSelectNewEntry = true;
      skipConfirmForSimpleEdits = true;
      keymaps = {"<C-x>" = "actions.select_split";};
      keymaps = {"<C-v>" = "actions.select_vsplit";};
      columns = ["icon"];
      float = {
        border = "rounded";
        max_height = 45;
        max_width = 60;
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
        max_width = 60;
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
        max_width = 60;
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
