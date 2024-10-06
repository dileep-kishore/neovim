{pkgs, ...}: let
  modes-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "nvim-modes";
    version = "2024-06-06";
    src = pkgs.fetchFromGitHub {
      owner = "mvllow";
      repo = "modes.nvim";
      rev = "326cff3282419b3bcc745061978c1e592cae055d";
      hash = "sha256-z1XD0O+gG2/+g/skdWGC64Zv4dXvvhWesaK/8DcPF/E=";
    };
    meta.homepage = "https://github.com/mvllow/modes.nvim";
  };
  incline-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "nvim-incline";
    version = "2024-05-17";
    src = pkgs.fetchFromGitHub {
      owner = "b0o";
      repo = "incline.nvim";
      rev = "16fc9c073e3ea4175b66ad94375df6d73fc114c0";
      hash = "sha256-5DoIvIdAZV7ZgmQO2XmbM3G+nNn4tAumsShoN3rDGrs=";
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
