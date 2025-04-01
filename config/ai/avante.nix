{
  plugins.avante = {
    enable = true;
    lazyLoad = {
      settings = {
        event = "DeferredUIEnter";
      };
    };
    settings = {
      provider = "openai";
      openai = {
        model = "o3-mini";
      };
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
