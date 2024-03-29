{
  plugins.neogen = {
    enable = true;
    enablePlaceholders = true;
    snippetEngine = "luasnip";
    languages = {
      python = {template = {annotation_convention = "numpydoc";};};
      typescript = {template = {annotation_convention = "tsdoc";};};
      typescriptreact = {template = {annotation_convention = "tsdoc";};};
    };
  };
}
