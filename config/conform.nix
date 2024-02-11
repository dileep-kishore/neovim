{
  plugins.conform-nvim = {
    enable = true;
    formatOnSave = {
      lspFallback = true;
      timeoutMs = 500;
    };
    # Map of filetype to formatters
    formattersByFt =
      # TODO: Do these need to be installed?
      {
        lua = [ "stylua" ];
        # Conform will run multiple formatters sequentially
        python = [ "isort" "ruff_format" ];
        # Use a sub-list to run only the first available formatter
        javascript = [ "prettier" ];
        javascriptreact = [ "prettier" ];
        typescript = [ "prettier" ];
        typescriptreact = [ "prettier" ];
        svelte = [ "prettier" ];
        css = [ "prettier" ];
        html = [ "prettier" ];
        json = [ "prettier" ];
        yaml = [ "prettier" ];
        markdown = [ "prettier" ];
        # Use the "_" filetype to run formatters on filetypes that don't have other formatters configured.
        "_" = [ "trim_whitespace" ];
        # # Use the "*" filetype to run formatters on all filetypes.
        # "*" = [ "codespell" ];
      };
  };
}
