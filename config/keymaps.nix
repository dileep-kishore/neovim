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
      action = "<cmd>m .+1<CR>==";
      key = "<A-j>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>m .-2<CR>==";
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

    # Plugins
    {
      action = "<cmd>Telescope live_grep<CR>";
      key = "<leader>tg";
    }
  ];
}
