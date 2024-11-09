{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    plenary-nvim
    vim-repeat
    friendly-snippets
    supermaven-nvim
    lualine-nvim
    tabby-nvim
    alpha-nvim
    lazygit-nvim
    lspkind-nvim
    zen-mode-nvim
    twilight-nvim
    ssr-nvim
    iron-nvim
    vim-just
    quarto-nvim
    {
      plugin = nvim-surround;
      config = "lua require('nvim-surround').setup({move_cursor='sticky'})";
    }
    {
      plugin = octo-nvim;
      config = ''lua require("octo").setup({suppress_missing_scope={projects_v2=true}})'';
    }
    {
      plugin = treesj;
      config = "lua require('treesj').setup({use_default_keymaps=false})";
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
      plugin = nvim-highlight-colors;
      config = "lua require('nvim-highlight-colors').setup({render='virtual', enable_tailwind=true, virtual_symbol=' ', virtual_symbol_suffix=''})";
    }
    {
      plugin = tabout-nvim;
      config = "lua require('tabout').setup()";
    }
  ];
}
