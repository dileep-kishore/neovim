{
  plugins.nvim-ufo = {
    enable = true;
    settings = {
      provider_selector = ''
        function(bufnr, filetype, buftype)
            return {'treesitter', 'indent'}
        end
      '';
      enable_get_fold_virt_text = true;
      fold_virt_text_handler = builtins.readFile ./ufo_virttext.lua;
    };
  };
}
