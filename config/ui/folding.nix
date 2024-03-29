{
  plugins.nvim-ufo = {
    enable = true;
    providerSelector = ''
      function(bufnr, filetype, buftype)
          return {'treesitter', 'indent'}
      end
    '';
    enableGetFoldVirtText = true;
    foldVirtTextHandler = builtins.readFile ./ufo_virttext.lua;
  };
}
