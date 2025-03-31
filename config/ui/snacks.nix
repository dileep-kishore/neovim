{
  plugins.snacks = {
    enable = true;
    settings = {
      styles = {
        lazygit = {
          border = "rounded";
          backdrop = false;
        };
      };
      bigfile.enabled = true;
      gitbrowse.enabled = true;
      lazygit = {
        enabled = true;
        win = {position = "float";};
      };
      quickfile = {
        enabled = true;
      };
      statuscolumn = {
        enabled = false;
      };
      words = {
        debounce = 100;
        enabled = true;
      };
      picker = {
        layouts = {
          custom = {
            preset = "default";
            layout = {backdrop = false;};
          };
          vscode-custom = {
            preset = "vscode";
            layout = {border = "rounded";};
          };
        };
        sources = {
          # Snacks pickers (find) [f]
          files.layout.preset = "custom";
          git_files.layout.preset = "custom";
          buffers.layout.preset = "dropdown";
          projects.layout.preset = "vscode-custom";
          jumps.layout.preset = "ivy";
          marks.layout.preset = "ivy";

          # Snacks pickers (git) [g]
          git_log.layout.preset = "vertical";
          git_log_file.layout.preset = "vertical";

          # Snacks pickers (search) [s]
          grep.layout.preset = "ivy";
          # lines.layout.preset = "ivy";
          grep_buffers.layout.preset = "ivy";
          todo_comments.layout.preset = "ivy";

          # Snacks pickers (misc) [t]
          command_history.layout.preset = "vscode-custom";
          registers.layout.preset = "vscode-custom";
          undo.layout.preset = "dropdown";
          help.layout.preset = "custom";
          highlights.layout.preset = "dropdown";
          icons.layout.preset = "vscode-custom";
          keymaps.layout.preset = "vscode-custom";

          # Snacks pickers (lsp) [l]
          diagnostics.layout.preset = "ivy";
          lsp_symbols.layout.preset = "custom";
        };
      };
    };
  };
}
