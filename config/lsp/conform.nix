{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      formatOnSave = {
        lspFallback = true;
        timeoutMs = 500;
      };
      # Map of filetype to formatters
      formattersByFt = {
        lua = ["stylua"];
        nix = ["alejandra"];
        sh = ["shfmt"];
        go = ["gofmt"];
        rust = ["rustfmt"];
        python = ["isort" "ruff_format"];
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
