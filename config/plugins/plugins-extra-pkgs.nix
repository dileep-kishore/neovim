{pkgs, ...}: {
  extraPackages = with pkgs; [
    alejandra
    eslint_d
    fd
    hadolint
    imagemagick
    isort
    lazygit
    mypy
    nodePackages.jsonlint
    nodePackages.prettier
    quarto
    ripgrep
    rstcheck
    ruff
    rustfmt
    shfmt
    stylelint
    stylua
    typstfmt
    vale
    python312Packages.pylatexenc
  ];
}
