{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    plenary-nvim
    vim-repeat
    friendly-snippets
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
    {
      plugin = nvim-surround;
      config = "lua require('nvim-surround').setup({move_cursor=false})";
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
      plugin = highlight-undo-nvim;
      config = "lua require('highlight-undo').setup()";
    }
    {
      plugin = grug-far-nvim;
      config = "lua require('grug-far').setup()";
    }
    {
      plugin = img-clip-nvim;
      config = "lua require('img-clip').setup()";
    }
  ];
}
