{
  plugins.which-key = {
    enable = true;
    settings = {
      layout = {align = "center";};
      win = {
        border = "rounded";
        wo.winblend = 10;
      };
    };
  };
  extraConfigLua = builtins.readFile ./whichkey.lua;
}
