{pkgs, ...}: let
  # TODO: Remove this once the nix pkg is updated
  copilot-lua-custom = pkgs.vimUtils.buildVimPlugin {
    pname = "copilot.lua";
    version = "2025-03-29";
    src = pkgs.fetchFromGitHub {
      owner = "zbirenbaum";
      repo = "copilot.lua";
      rev = "0d56d43d2d2c0c8cf897a338be402bd639a906ae";
      hash = "sha256-OGursz/xVjG5xBrgQCqnazOpH39uojpbgJ9Tvhqpji8=";
    };
    meta.homepage = "https://github.com/zbirenbaum/copilot.lua";
  };
in {
  extraPlugins = [
    copilot-lua-custom
  ];
  plugins.copilot-lua = {
    enable = true;
    package = copilot-lua-custom;
    nodePackage = pkgs.nodejs_23;
    lazyLoad.settings = {
      cmd = "Copilot";
      event = "InsertEnter";
    };
    settings = {
      panel = {
        enabled = false;
        layout.position = "bottom";
      };
      copilot_model = "gpt-4o-copilot";
      suggestion = {
        enabled = true;
        auto_trigger = true;
        hide_during_completion = true;
        keymap = {
          accept = "<C-l>";
          accept_word = "<C-j>";
          next = "<A-n>";
          prev = "<A-p>";
        };
      };
      filetypes = {
        "grug-far" = false;
        "grug-far-history" = false;
        "grug-far-help" = false;
        "." = false;
        "" = false;
        "chatgpt-input" = false;
        "oil" = false;
        "minifiles" = false;
        "markdown" = true;
        "yaml" = true;
        "gitcommit" = true;
      };
    };
  };
  plugins.copilot-chat = {
    enable = false;
    settings = {
      auto_follow_cursor = true;
      auto_insert_mode = true;
      context = "buffer";
      model = "claude-3.5-sonnet";
    };
  };
}
