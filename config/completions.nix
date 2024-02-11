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
    mapping = {
      "<C-Space>" = "cmp.mapping.complete()";
      "<C-d>" = "cmp.mapping.scroll_docs(-4)";
      "<C-e>" = "cmp.mapping.close()";
      "<C-f>" = "cmp.mapping.scroll_docs(4)";
      "<CR>" = "cmp.mapping.confirm({ select = true })";
      "<C-p>" = {
        action = "cmp.mapping.select_prev_item()";
        modes = [ "i" "s" ];
      };
      "<C-n>" = {
        action = "cmp.mapping.select_next_item()";
        modes = [ "i" "s" ];
      };
    };
  };
}
