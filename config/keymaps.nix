{
  config.globals = {
    mapleader = " ";
    maplocalleader = " ";
  };
  config.keymaps = [
    {
      mode = "";
      key = "<Space>";
      action = "<Nop>";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      mode = "i";
      key = "jk";
      action = "<Esc>";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Telescope live_grep<CR>";
      key = "<leader>tg";
    }
  ];
}
