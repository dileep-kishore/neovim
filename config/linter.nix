{
  plugins.lint = {
    enable = true;
    lintersByFt = {
      text = [ "vale" ];
      markdown = [ "vale" ];
      rst = [ "rstcheck" "vale" ];
      nix = [ "nix" ];
      json = [ "jsonlint" ];
      css = [ "stylelint" ];
      scss = [ "stylelint" ];
      dockerfile = [ "hadolint" ];
      python = [ "pylint" ];
      javascript = [ "eslint_d" ];
      typescript = [ "eslint_d" ];
      javascriptreact = [ "eslint_d" ];
      typescriptreact = [ "eslint_d" ];
      svelte = [ "eslint_d" ];
    };
  };
}
