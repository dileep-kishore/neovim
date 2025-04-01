{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    plenary-nvim
    vim-repeat
    friendly-snippets
    lualine-nvim
    tabby-nvim
    alpha-nvim
    twilight-nvim
    ssr-nvim
    iron-nvim
    vim-just
    quarto-nvim
    {
      plugin = octo-nvim;
      config = ''lua require("octo").setup({suppress_missing_scope={projects_v2=true}})'';
    }
    {
      plugin = grug-far-nvim;
      config = "lua require('grug-far').setup()";
    }
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
