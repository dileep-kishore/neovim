{
  plugins.gitsigns = {
    enable = true;
    attachToUntracked = true;
    currentLineBlame = false;
    trouble = true;
  };
  plugins.neogit = {
    enable = true;
    settings.integrations = {
      diffview = true;
    };
  };
  plugins.diffview = {
    enable = true;
  };
  plugins.fugitive = {
    enable = true;
  };
}
