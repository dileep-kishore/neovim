{
  plugins.image = {
    enable = true;
    editorOnlyRenderWhenFocused = true;
    maxHeightWindowPercentage = 50;
    maxWidthWindowPercentage = 50;
    integrations = {
      markdown = {
        enabled = true;
        clearInInsertMode = true;
        onlyRenderImageAtCursor = true;
      };
      neorg = {
        enabled = true;
        clearInInsertMode = true;
        onlyRenderImageAtCursor = true;
      };
      syslang = {
        enabled = true;
        clearInInsertMode = true;
        onlyRenderImageAtCursor = true;
      };
    };
  };
}
