{
  plugins.nvim-cmp = {
    enable = true;
    autoEnableSources = true;
    sources = [
      { name = "nvim_lsp"; }
      { name = "buffer"; }
      { name = "path"; }
      { name = "luasnip"; }
    ];
  };
}
