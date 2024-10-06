{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    {
      plugin = ChatGPT-nvim;
      config = "lua require('chatgpt').setup({openai_params={model='gpt-4o-mini'}})";
    }
  ];
}
