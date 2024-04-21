{pkgs, ...}: {
  extraPackages = with pkgs; [
    alejandra
    commitlint
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
  ];
}
