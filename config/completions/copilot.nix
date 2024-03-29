{
  plugins.copilot-lua = {
    enable = true;
    panel = {
      enabled = false;
      layout.position = "bottom";
    };
    suggestion = {
      enabled = true;
      autoTrigger = true;
      keymap = {
        accept = "<C-l>";
        next = "<A-n>";
        prev = "<A-p>";
      };
    };
  };
}
