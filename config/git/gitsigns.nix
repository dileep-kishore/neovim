{
  plugins.gitsigns = {
    enable = true;
    settings = {
      signs = {
        add = {text = "▒";};
        change = {text = "▒";};
        delete = {text = "▒";};
        topdelete = {text = "▒";};
        changedelete = {text = "▒";};
      };
      signs_staged = {
        add = {text = "▒";};
        change = {text = "▒";};
        delete = {text = "▒";};
        topdelete = {text = "▒";};
        changedelete = {text = "▒";};
      };
      attach_to_untracked = false;
      current_line_blame = false;
      numhl = true;
      trouble = true;
    };
  };
}
