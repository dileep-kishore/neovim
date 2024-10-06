{
  plugins.copilot-lua = {
    enable = false;
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
    filetypes = {
      "grug-far" = false;
      "grug-far-history" = false;
      "grug-far-help" = false;
    };
  };
}
