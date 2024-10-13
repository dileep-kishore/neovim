{
  plugins.render-markdown = {
    enable = true;
    settings = {
      heading = {
        width = "block";
        right_pad = 5;
        border = true;
        border_virtual = true;
      };
      code = {
        width = "block";
        position = "right";
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
