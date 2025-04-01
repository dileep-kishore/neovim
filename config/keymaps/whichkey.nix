{
  plugins.which-key = {
    enable = true;
    settings = {
      preset = "helix";
    };
  };
  extraConfigLua = builtins.readFile ./whichkey.lua;
}
