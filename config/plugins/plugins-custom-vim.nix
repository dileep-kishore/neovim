{pkgs, ...}: let
  # TODO: Update these
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
  grapple-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "grapple-nvim";
    version = "2024-09-29";
    src = pkgs.fetchFromGitHub {
      owner = "cbochs";
      repo = "grapple.nvim";
      rev = "b41ddfc1c39f87f3d1799b99c2f0f1daa524c5f7";
      hash = "sha256-Dz60583Qic2TqO3BPSHME4Q7CiweB1gQCdFNtjNoN3U=";
    };
    meta.homepage = "https://github.com/cbochs/grapple.nvim";
  };
in {
  extraPlugins = [
    modes-nvim
    incline-nvim
    {
      plugin = grapple-nvim;
      config = "lua require('grapple').setup({scope='git_branch'})";
    }
  ];
}
