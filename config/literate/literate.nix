{
  plugins.image = {
    enable = true;
    editorOnlyRenderWhenFocused = true;
    maxHeightWindowPercentage = 50;
    maxWidthWindowPercentage = 50;
    integrations = {
      markdown = {
        enabled = true;
        clearInInsertMode = true;
        onlyRenderImageAtCursor = true;
      };
      neorg = {
        enabled = true;
        clearInInsertMode = true;
        onlyRenderImageAtCursor = true;
      };
      syslang = {
        enabled = true;
        clearInInsertMode = true;
        onlyRenderImageAtCursor = true;
      };
    };
  };

  extraConfigLua = ''
    local iron = require("iron.core")

    -- NOTE: Setup copied from https://github.com/Vigemus/iron.nvim
    iron.setup {
      config = {
        scratch_repl = true,
        repl_definition = {
          sh = {
            command = {"zsh"}
          },
          python = require("iron.fts.python").ipython,
        },
        repl_open_cmd = require('iron.view').bottom(40),
      },
      keymaps = {
        visual_send = "<space>ix",
        send_file = "<space>if",
        send_line = "<space>il",
        cr = "<space>i<cr>",
        interrupt = "<space>i<space>",
        exit = "<space>iq",
        clear = "<space>ic",
      },
      highlight = {
        italic = true
      },
      ignore_blank_lines = true,
    }

    vim.keymap.set('n', '<space>ir', '<cmd>IronRepl<cr>')
    vim.keymap.set('n', '<space>ih', '<cmd>IronHide<cr>')
  '';
}
