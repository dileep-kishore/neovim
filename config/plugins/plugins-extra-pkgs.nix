{pkgs, ...}: {
  extraPackages = with pkgs; [
    alejandra
    eslint_d
    fd
    gh
    hadolint
    imagemagick
    isort
    lazygit
    mypy
    nodePackages.jsonlint
    nodePackages.prettier
    python312Packages.pylatexenc
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
