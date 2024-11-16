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
        acceptWord = "<C-j>";
        next = "<A-n>";
        prev = "<A-p>";
      };
    };
    filetypes = {
      "grug-far" = false;
      "grug-far-history" = false;
      "grug-far-help" = false;
      "." = false;
      "" = false;
      "chatgpt-input" = false;
      "oil" = false;
      "minifiles" = false;
    };
  };
  plugins.copilot-chat = {
    enable = true;
    settings = {
      auto_follow_cursor = true;
      auto_insert_mode = true;
      context = "buffer";
      model = "claude-3.5-sonnet";
    };
  };
}
