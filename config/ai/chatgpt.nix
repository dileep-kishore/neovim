{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    {
      plugin = ChatGPT-nvim;
      config = "lua require('chatgpt').setup()";
    }
  ];
}
