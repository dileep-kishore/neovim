{
  plugins.flash = {
    enable = true;
    lazyLoad.settings.event = "DeferredUIEnter";
    settings = {
      continue = false;
      modes.search.enabled = false;
      jump = {
        autojump = false;
        history = false;
        jumplist = true;
        nohlsearch = true;
      };
      label = {
        after = true;
        min_pattern_length = 0;
        rainbow.enabled = false;
      };
    };
  };
}
