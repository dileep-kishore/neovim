{
  plugins.mini = {
    enable = true;
    mockDevIcons = true;
    modules = {
      icons.enable = true;
      animate = {
        cursor.enable = true;
        scroll.enable = true;
        resize.enable = true;
        open.enable = true;
        close.enable = true;
      };
      indentscope = {
        options = {
          try_as_border = true;
          border = "top";
        };
        symbol = "¦";
      };
      bufremove = {};
      files = {
        windows.preview = true;
        windows.width_preview = 60;
      };
    };
  };
}
