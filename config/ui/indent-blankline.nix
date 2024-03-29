{
  plugins.indent-blankline = {
    enable = false;
    settings = {
      indent.char = "│";
      whitespace.remove_blankline_trail = true;
      scope = {
        enabled = false;
        show_end = true;
        show_start = true;
      };
      exclude.filetypes = [
        "help"
        "alpha"
        "dashboard"
        "neo-tree"
        "Trouble"
        "trouble"
        "lazy"
        "notify"
        "toggleterm"
        "lazyterm"
        "lspinfo"
        "packer"
        "checkhealth"
        "help"
        "man"
        "gitcommit"
        "TelescopePrompt"
        "TelescopeResults"
        "\'\'"
      ];
    };
  };
}
