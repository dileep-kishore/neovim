{
  config.globals = {
    mapleader = " ";
    maplocalleader = " ";
  };
  config.keymaps = [
    {
      mode = "";
      key = "<Space>";
      action = "<Nop>";
      options = {
        noremap = true;
        silent = true;
      };
    }
    # jk -> <Esc> keymap in better-escape plugin config

    # Window navigation
    {
      action = "<C-w>h";
      key = "<C-h>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Move to the window on the left";
      };
    }
    {
      action = "<C-w>j";
      key = "<C-j>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Move to the window below";
      };
    }
    {
      action = "<C-w>k";
      key = "<C-k>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Move to the window above";
      };
    }
    {
      action = "<C-w>l";
      key = "<C-l>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Move to the window on the right";
      };
    }

    # Tab navigation
    {
      action = "<cmd>tabprevious<CR>";
      key = "[t";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "previous tab";
      };
    }
    {
      action = "<cmd>tabnext<CR>";
      key = "]t";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "next tab";
      };
    }

    # Resize window with Ctrl + arrow keys
    {
      action = "<cmd>resize +4<CR>";
      key = "<C-Up>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Increase window height";
      };
    }
    {
      action = "<cmd>resize -4<CR>";
      key = "<C-Down>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Decrease window height";
      };
    }
    {
      action = "<cmd>vertical resize +4<CR>";
      key = "<C-Left>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Increase window width";
      };
    }
    {
      action = "<cmd>vertical resize -4<CR>";
      key = "<C-Right>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Decrease window width";
      };
    }

    # Navigate buffers
    {
      action = "<cmd>bprevious<CR>";
      key = "[b";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "previous buffer";
      };
    }
    {
      action = "<cmd>bnext<CR>";
      key = "]b";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "next buffer";
      };
    }

    # Navigate tabs
    {
      action = "<cmd>tabnew<CR>";
      key = "<C-t>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "new tab";
      };
    }

    # Turn off search highlight
    {
      action = "<cmd>nohl<CR>";
      key = "<C-n>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Clear search highlight";
      };
    }

    # Save files
    {
      action = "<cmd>w<CR>";
      key = "<C-s>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Save file";
      };
    }
    # Close buffers
    {
      action = "<cmd>lua require('mini.bufremove').delete()<CR>";
      key = "<Leader>qb";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Delete buffer";
      };
    }
    # Close window
    {
      action = "<cmd>q<CR>";
      key = "<Leader>qw";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Close window";
      };
    }
    # Close tab
    {
      action = "<cmd>tabclose<CR>";
      key = "<Leader>qt";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Close tab";
      };
    }

    # Stay in visual mode while indenting
    {
      action = "<gv";
      key = "<";
      mode = "v";
      options = {
        noremap = true;
        silent = true;
        desc = "Indent left";
      };
    }
    {
      action = ">gv";
      key = ">";
      mode = "v";
      options = {
        noremap = true;
        silent = true;
        desc = "Indent right";
      };
    }
    # Visual mode paste
    {
      action = ''"_dP'';
      key = "p";
      mode = "v";
      options = {
        noremap = true;
        silent = true;
        desc = "Paste without yanking";
      };
    }

    # Macros
    {
      action = "@qj";
      key = "Q";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Run q macro";
      };
    }
    {
      action = ":norm @q<CR>";
      key = "Q";
      mode = "x";
      options = {
        noremap = true;
        silent = true;
        desc = "Run q macro";
      };
    }
  ];
}
