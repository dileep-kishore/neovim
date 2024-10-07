{pkgs, ...}: let
  codeium-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "codeium-nvim";
    version = "2024-10-05";
    src = pkgs.fetchFromGitHub {
      owner = "Exafunction";
      repo = "codeium.nvim";
      rev = "ed65f0a5262c746b2d69a7ae67af7c1da89f94ab";
      hash = "sha256-t7LY7QxIVCBBIIvhDt7rFQBKJtBn/CjAtBq3Wgo+MRg=";
    };
    meta.homepage = "https://github.com/Exafunction/codeium.nvim";
  };
in {
  plugins.codeium-nvim = {
    enable = true;
    package = codeium-nvim;
    settings = {
      enable_chat = true;
    };
  };
}
