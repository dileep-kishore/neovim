{pkgs, ...}: let
  devdocs-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "nvim-devdocs";
    version = "2023-12-22";
    src = pkgs.fetchFromGitHub {
      owner = "luckasRanarison";
      repo = "nvim-devdocs";
      rev = "521d24661ffe6d1ba025debea2675c765a9c1ee1";
      hash = "sha256-qqtBNfBBGyxMsHL3UXu+MF/UyfVAubG+6fnwLK9kY9Q=";
    };
    meta.homepage = "https://github.com/luckasRanarison/nvim-devdocs";
  };
  modes-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "nvim-modes";
    version = "2023-12-10";
    src = pkgs.fetchFromGitHub {
      owner = "mvllow";
      repo = "modes.nvim";
      rev = "4035a46aaabe43faf1b54740575af9dd5bb03809";
      hash = "sha256-Kd2hf5obrPvCVLtRcFjLd75byyrB2o3uYCSEMW6IeCc=";
    };
    meta.homepage = "https://github.com/mvllow/modes.nvim";
  };
  incline-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "nvim-incline";
    version = "2024-02-28";
    src = pkgs.fetchFromGitHub {
      owner = "b0o";
      repo = "incline.nvim";
      rev = "2f5f6094089b29ee1e626cd9459fb42ce249e191";
      hash = "sha256-tu8KrBnw6mqaACgmgdTvfLhFp5EGAsA7xp0SLbsMXTI=";
    };
    meta.homepage = "https://github.com/b0o/incline.nvim";
  };
  grapple-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "grapple-nvim";
    version = "2024-03-25";
    src = pkgs.fetchFromGitHub {
      owner = "cbochs";
      repo = "grapple.nvim";
      rev = "5d96868a6e9791b7a8ee51a9eef43fc408b9650e";
      hash = "sha256-EPokho3yxeTAFHnnfCeWW3mq5NO8sDqBAftkfOtgPgg=";
    };
    meta.homepage = "https://github.com/cbochs/grapple.nvim";
  };
in {
  extraPlugins = [
    {
      plugin = devdocs-nvim;
      config = "lua require('nvim-devdocs').setup()";
    }
    modes-nvim
    incline-nvim
    {
      plugin = grapple-nvim;
      config = "lua require('grapple').setup({scope='git_branch'})";
    }
  ];
}
