{
  plugins.bufferline = {
    enable = true;
    colorIcons = true;
    diagnostics = "nvim_lsp";
    mode = "buffers"; # "buffers" or "tabs"
    separatorStyle = "thick"; # "slant" or "slope" or "thick" or "thin" or "none"
    showBufferCloseIcons = false;
    showTabIndicators = true;
    highlights.bufferSelected.italic = true;
    indicator = {
      icon = "▎";
      style = "underline";
    };
  };
}
