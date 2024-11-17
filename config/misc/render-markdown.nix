{
  plugins.render-markdown = {
    enable = true;
    settings = {
      preset = "obsidian";
      heading = {
        width = "block";
        right_pad = 5;
        border = true;
        border_virtual = true;
        position = "overlay";
      };
      indent = {
        enabled = true;
      };
      code = {
        width = "block";
        position = "left";
        right_pad = 5;
        border = "thick";
      };
      dash = {width = 100;};
      file_types = [
        "markdown"
        "Avante"
      ];
    };
  };
}
