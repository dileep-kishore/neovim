{
  plugins.chatgpt = {
    enable = true;
    settings = {
      openai_params = {
        model = "gpt-4o-mini";
      };
    };
    lazyLoad.settings.event = "DeferredUIEnter";
  };
}
