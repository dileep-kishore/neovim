{pkgs, ...}: let
  modes-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "nvim-modes";
    version = "2025-01-25";
    src = pkgs.fetchFromGitHub {
      owner = "mvllow";
      repo = "modes.nvim";
      rev = "1e34663c32e8f5d915921a938e0dc4e3e788ceb8";
      hash = "sha256-XgER+qp/GSAimj7C23coOpwsEc3CdImyN+tFVIPKqh0=";
    };
    meta.homepage = "https://github.com/mvllow/modes.nvim";
  };
  incline-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "nvim-incline";
    version = "2025-03-24";
    src = pkgs.fetchFromGitHub {
      owner = "b0o";
      repo = "incline.nvim";
      rev = "27040695b3bbfcd3257669037bd008d1a892831d";
      hash = "sha256-5chrEfjk1Q+lvGqtoUfS/cYbxCUp1gij6SMoB1QRNbs=";
    };
    meta.homepage = "https://github.com/b0o/incline.nvim";
  };
in {
  extraPlugins = [
    modes-nvim
    incline-nvim
  ];
}
