{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    plenary-nvim
    lualine-nvim
    tabby-nvim
    alpha-nvim
    ssr-nvim
    iron-nvim
    vim-just
    quarto-nvim
    {
      plugin = img-clip-nvim;
      config = "lua require('img-clip').setup()";
    }
    {
      plugin = tabout-nvim;
      config = "lua require('tabout').setup()";
    }
    {
      plugin = highlight-undo-nvim;
      config = "lua require('highlight-undo').setup()";
    }
  ];
}
