{
  plugins.conform-nvim = {
    enable = true;
    lazyLoad.settings = {
      event = "BufWritePre";
      cmd = "ConformInfo";
    };
    settings = {
      format_on_save = {
        lsp_format = "fallback";
        timeout_ms = 500;
      };
      # Map of filetype to formatters
      formatters_by_ft = {
        lua = ["stylua"];
        nix = ["alejandra"];
        sh = ["shfmt"];
        go = ["gofmt"];
        rust = ["rustfmt"];
        python = ["ruff_organize_imports" "ruff_format"];
        javascript = ["prettier"];
        javascriptreact = ["prettier"];
        typescript = ["prettier"];
        typescriptreact = ["prettier"];
        svelte = ["prettier"];
        css = ["prettier"];
        html = ["prettier"];
        json = ["prettier"];
        yaml = ["prettier"];
        markdown = ["prettier"];
        typst = ["typstfmt"];
        # Use the "_" filetype to run formatters on filetypes that don't have other formatters configured.
        "_" = ["trim_newlines" "trim_whitespace"];
        # # Use the "*" filetype to run formatters on all filetypes.
        # "*" = [ "codespell" ];
      };
    };
  };
}
