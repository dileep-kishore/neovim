{
  plugins.avante = {
    enable = true;
    settings = {
      provider = "openai";
      behavior = {
        auto_suggestions = false;
        enable_claude_text_editor_tool_mode = true;
        enable_cursor_planning_mode = true;
      };
      hints.enabled = false;
      windows.wrap = true;
    };
  };
}
