{
  plugins.lspsaga = {
    enable = true;
    ui = {
      border = "rounded";
      codeAction = "";
      kind = {
        Folder = [" "];
      };
    };
    beacon.enable = true;
    implement = {
      enable = true;
      sign = false;
    };
    lightbulb = {
      enable = true;
      sign = true;
      virtualText = false;
    };
    outline = {layout = "float";};
    symbolInWinbar = {
      enable = true;
      showFile = true;
      colorMode = false;
      separator = "  ";
    };
  };
  extraConfigLua = builtins.readFile ./lspsaga.lua;
}
