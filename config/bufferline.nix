{
  plugins.bufferline = {
    enable = true;
    colorIcons = true;
    diagnostics = "nvim_lsp";
    mode = "buffers"; # "buffers" or "tabs"
    showBufferCloseIcons = true;
    showTabIndicators = true;
    highlights.bufferSelected.italic = true;
    indicator = {
      icon = "";
      style = "icon";
    };
  };
}
