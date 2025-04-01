{
  plugins.jupytext = {
    enable = true;
    settings = {
      style = "markdown";
      output_extension = "md";
      force_ft = "markdown";
    };
  };
  extraConfigLua = builtins.readFile ./code-cells.lua;
}
