{
  plugins.image = {
    enable = true;
    backend = "kitty";
    editorOnlyRenderWhenFocused = true;
    maxWidth = 100;
    maxHeight = 25;
    maxHeightWindowPercentage = 80;
    maxWidthWindowPercentage = 80;
    windowOverlapClearFtIgnore = ["cmp_menu" "cmp_docs"];
    settings.integrations = {
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
