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
    {
      mode = "i";
      key = "jk";
      action = "<Esc>";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # Window navigation
    {
      action = "<C-w>h";
      key = "<C-h>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<C-w>j";
      key = "<C-j>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<C-w>k";
      key = "<C-k>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<C-w>l";
      key = "<C-l>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    # Resize window with Ctrl + arrow keys
    {
      action = "<cmd>resize -4<CR>";
      key = "<C-Up>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>resize +4<CR>";
      key = "<C-Down>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>vertical resize -4<CR>";
      key = "<C-Left>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>vertical resize +4<CR>";
      key = "<C-Right>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    # Navigate buffers
    {
      action = "<cmd>bprevious<CR>";
      key = "[b";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>bnext<CR>";
      key = "]b";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    # Navigate tabs
    {
      action = "<cmd>tabnew<CR>";
      key = "<C-t>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    # Move text up and down
    {
      action = "<cmd>move .+1<CR>==";
      key = "<A-j>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>move .-2<CR>==";
      key = "<A-k>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    # Turn off search highlight
    {
      action = "<cmd>nohl<CR>";
      key = "<C-n>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    # Save files
    {
      action = "<cmd>w<CR>";
      key = "<C-s>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    # Close buffer
    {
      action = "<cmd>bdelete<CR>";
      key = "<C-x>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    # Close window
    {
      action = "<cmd>q<CR>";
      key = "<C-q>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    # Stay in visual mode while indenting
    {
      action = "<gv";
      key = "<";
      mode = "v";
      options = { noremap = true; silent = true; };
    }
    {
      action = ">gv";
      key = ">";
      mode = "v";
      options = { noremap = true; silent = true; };
    }
    # Move text up and down in visual mode
    {
      action = ":move '>+1<CR>gv=gv";
      key = "<A-j>";
      mode = "v";
      options = { noremap = true; silent = true; };
    }
    {
      action = ":move '<-2<CR>gv=gv";
      key = "<A-k>";
      mode = "v";
      options = { noremap = true; silent = true; };
    }
    # Visual mode paste
    {
      action = ''"_dP'';
      key = "p";
      mode = "v";
      options = { noremap = true; silent = true; };
    }

    ## Plugins

    # Vim-tmux-navigator
    {
      action = "<cmd><C-U>TmuxNavigateLeft<CR>";
      key = "<C-h>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd><C-U>TmuxNavigateDown<CR>";
      key = "<C-j>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd><C-U>TmuxNavigateUp<CR>";
      key = "<C-k>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd><C-U>TmuxNavigateRight<CR>";
      key = "<C-l>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    # nvim-hlslens
    {
      action = "<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>";
      key = "n";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>";
      key = "N";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "*<Cmd>lua require('hlslens').start()<CR>";
      key = "*";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "#<Cmd>lua require('hlslens').start()<CR>";
      key = "#";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "g*<Cmd>lua require('hlslens').start()<CR>";
      key = "g*";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "g#<Cmd>lua require('hlslens').start()<CR>";
      key = "g#";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    # Alpha dashboard
    {
      action = "<cmd>Alpha<CR>";
      key = "<Leader>a";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    # Nvim-tree
    {
      action = "<cmd>NvimTreeToggle<CR>";
      key = "<C-/>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    # TODO: Continue with keymaps
  ];
}
