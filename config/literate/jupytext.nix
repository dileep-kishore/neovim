{
  plugins.jupytext = {
    enable = true;
    settings = {
      style = "quarto";
      output_extension = "qmd";
      force_ft = "quarto";
    };
  };
  extraConfigLua = builtins.readFile ./code-cells.lua;
}
