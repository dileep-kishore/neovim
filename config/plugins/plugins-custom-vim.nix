{
  pkgs,
  lib,
  ...
}: let
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
  websocket-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "websocket-nvim";
    version = "2024-04-14";
    src = pkgs.fetchFromGitHub {
      owner = "AbaoFromCUG";
      repo = "websocket.nvim";
      rev = "8a096d51c957557f939e296c4937f27d5dc596d5";
      hash = "sha256-+Z2RgiqdYWzkEUQRHxqoaiLeekziNaf3bNZEe3dDexI=";
    };
    buildInputs = [pkgs.vimPlugins.plenary-nvim pkgs.vimPlugins.nvim-treesitter];
    meta.homepage = "https://github.com/AbaoFromCUG/websocket.nvim";
  };
  neopyter = pkgs.vimUtils.buildVimPlugin {
    pname = "neopyter";
    version = "2025-03-18";
    src = pkgs.fetchFromGitHub {
      owner = "SUSTech-data";
      repo = "neopyter";
      rev = "8716511f2a0d1500ba8f4adeb05bbb432a080bac";
      hash = "sha256-dNUNWvMESeDfbLVLymW9nvLuhQGJoV26JaL7V8NQvF0=";
    };
    buildInputs = [pkgs.vimPlugins.plenary-nvim pkgs.vimPlugins.nvim-treesitter websocket-nvim];
    nvimSkipModules = [
      "neopyter.neoconf"
      "neopyter.cmp"
    ];
    meta.homepage = "https://github.com/SUSTech-data/neopyter";
  };
in {
  extraPlugins = [
    modes-nvim
    incline-nvim
    websocket-nvim
    neopyter
  ];
}
