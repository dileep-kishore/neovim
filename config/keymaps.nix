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
      };
    }
    {
      action = "<C-w>j";
      key = "<C-j>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<C-w>k";
      key = "<C-k>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<C-w>l";
      key = "<C-l>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
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
      };
    }
    {
      action = "<cmd>tabnext<CR>";
      key = "]t";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
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
      };
    }
    {
      action = "<cmd>resize -4<CR>";
      key = "<C-Down>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>vertical resize +4<CR>";
      key = "<C-Left>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>vertical resize -4<CR>";
      key = "<C-Right>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
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
      };
    }
    {
      action = "<cmd>bnext<CR>";
      key = "]b";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
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
      };
    }

    # Move text up and down
    {
      action = "<cmd>move .+1<CR>==";
      key = "<A-j>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>move .-2<CR>==";
      key = "<A-k>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
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
      };
    }
    {
      action = ">gv";
      key = ">";
      mode = "v";
      options = {
        noremap = true;
        silent = true;
      };
    }
    # Move text up and down in visual mode
    {
      action = ":move '>+1<CR>gv=gv";
      key = "<A-j>";
      mode = "v";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = ":move '<-2<CR>gv=gv";
      key = "<A-k>";
      mode = "v";
      options = {
        noremap = true;
        silent = true;
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
      };
    }
    {
      action = ":norm @q<CR>";
      key = "Q";
      mode = "x";
      options = {
        noremap = true;
        silent = true;
      };
    }

    ## Plugins

    # Vim-tmux-navigator
    {
      action = "<cmd><C-U>TmuxNavigateLeft<CR>";
      key = "<C-h>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd><C-U>TmuxNavigateDown<CR>";
      key = "<C-j>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd><C-U>TmuxNavigateUp<CR>";
      key = "<C-k>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd><C-U>TmuxNavigateRight<CR>";
      key = "<C-l>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # Alpha dashboard
    {
      action = "<cmd>Alpha<CR>";
      key = "<Leader>aa";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # Oil
    {
      action = "<cmd>Oil --float<CR>";
      key = "-";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # Luasnip
    {
      action = "<cmd>lua require'luasnip'.expand()<CR>";
      key = "<C-k>";
      mode = "i";
      options = {silent = true;};
    }

    ## Git
    # Fugitive
    {
      action = "<cmd>Gwrite<CR>";
      key = "<leader>ga";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Git commit<CR>";
      key = "<leader>gc";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    # Gitsigns
    {
      action = "<cmd>lua require('gitsigns').next_hunk()<cr>";
      key = "]h";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua require('gitsigns').prev_hunk()<cr>";
      key = "[h";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua require('gitsigns').preview_hunk_inline()<cr>";
      key = "<leader>gp";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua require('gitsigns').blame_line({full=true})<cr>";
      key = "<leader>gb";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua require('gitsigns').stage_hunk()<cr>";
      key = "<leader>gs";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua require('gitsigns').undo_stage_hunk()<cr>";
      key = "<leader>gu";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua require('gitsigns').reset_hunk()<cr>";
      key = "<leader>gr";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Gitsigns diffthis HEAD<cr>";
      key = "<leader>gd";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    # Neogit
    {
      action = "<cmd>Neogit<CR>";
      key = "<leader>gg";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    # Diffview
    {
      action = "<cmd>DiffviewOpen<CR>";
      key = "<leader>gD";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>DiffviewFileHistory<CR>";
      key = "<leader>gh";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    # LazyGit
    {
      action = "<cmd>LazyGit<CR>";
      key = "<leader>gl";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # Other telescope keymaps
    {
      action = "<cmd>Telescope buffers theme=dropdown<CR>";
      key = "<leader>fb";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Telescope frecency theme=dropdown<cr>";
      key = "<leader>o";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }

    ## LSP and diagnostics
    # Trouble
    {
      action = "<cmd>TroubleToggle<CR>";
      key = "<leader>xx";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Trouble workspace_diagnostics<cr>";
      key = "<leader>xw";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Trouble document_diagnostics<cr>";
      key = "<leader>xd";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Trouble loclist<cr>";
      key = "<leader>xl";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Trouble quickfix<cr>";
      key = "<leader>xq";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    # LSP
    {
      action = "<cmd>lua vim.diagnostic.open_float()<CR>";
      key = "<leader>le";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Lspsaga code_action<cr>";
      key = "<leader>la";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Telescope diagnostics theme=dropdown<cr>";
      key = "<leader>ld";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Lspsaga peek_definition<cr>";
      key = "<leader>lp";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Lspsaga finder<cr>";
      key = "<leader>lf";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>LspInfo<cr>";
      key = "<leader>li";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Lspsaga diagnostic_jump_next<CR>";
      key = "]d";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Lspsaga diagnostic_jump_prev<cr>";
      key = "[d";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua vim.lsp.codelens.run()<cr>";
      key = "<leader>ll";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = ":IncRename ";
      key = "<leader>lr";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Lspsaga lsp_rename ++project<cr>";
      key = "<leader>lR";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Telescope lsp_document_symbols theme=dropdown<cr>";
      key = "<leader>ls";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Telescope lsp_dynamic_workspace_symbols theme=dropdown<cr>";
      key = "<leader>lS";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Lspsaga outline<cr>";
      key = "<leader>lo";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    # lspsaga
    {
      action = "<cmd>Lspsaga incoming_calls<cr>";
      key = "<leader>Li";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Lspsaga outgoing_calls<cr>";
      key = "<leader>Lo";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Lspsaga hover_doc<cr>";
      key = "K";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Lspsaga goto_definition<cr>";
      key = "gd";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # Todo-comments
    {
      action = "<cmd>TodoTrouble<cr>";
      key = "<leader>xt";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>TodoTelescope theme=ivy<CR>";
      key = "<leader>st";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # Projects
    {
      action = "<cmd>Telescope projects theme=dropdown<CR>";
      key = "<leader>fp";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # DAP
    {
      action = "<cmd>lua require'dap'.toggle_breakpoint()<CR>";
      key = "<leader>db";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua require'dap'.continue()<CR>";
      key = "<leader>dc";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua require'dapui'.toggle()<CR>";
      key = "<leader>do";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # Terminal
    # NOTE: I have not set keybindings to toggle these terminals
    {
      action = "<cmd>ToggleTerm size=10 direction=horizontal<CR>";
      key = "<leader>th";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>ToggleTerm size=80 direction=vertical<CR>";
      key = "<leader>tv";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # Spectre
    {
      action = "<cmd>lua require('spectre').open_file_search()<CR>";
      key = "<leader>sr";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua require('spectre').toggle()<CR>";
      key = "<leader>sR";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # Harpoon
    {
      action = "<cmd>lua require('harpoon'):list():append()<CR><cmd>lua vim.notify('Added to harpoon', 'info')<CR>";
      key = "<S-m>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua require('harpoon').ui:toggle_quick_menu(require('harpoon'):list())<CR>";
      key = "<S-l>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua require('harpoon'):list():select(1)<CR>";
      key = "<leader>h1";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua require('harpoon'):list():select(2)<CR>";
      key = "<leader>h2";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # Folding
    {
      action = "<cmd>lua require('ufo').openAllFolds()<CR>";
      key = "zR";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua require('ufo').closeAllFolds()<CR>";
      key = "zM";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # Yanky.nvim
    {
      action = "<cmd>lua require('telescope').extensions.yank_history.yank_history()<cr>";
      key = "<leader>ty";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # Refactor
    {
      action = "<cmd>lua require('refactoring').refactor('Extract Function')<cr>";
      key = "<leader>re";
      mode = "x";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua require('refactoring').refactor('Extract Function To File')<cr>";
      key = "<leader>rf";
      mode = "x";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua require('refactoring').refactor('Extract Variable')<cr>";
      key = "<leader>rv";
      mode = "x";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # Zen mode and twilight
    {
      action = "<cmd>ZenMode<CR>";
      key = "<leader>zz";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>Twilight<CR>";
      key = "<leader>zt";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # Otter.nvim keymap
    {
      action = "<cmd>lua require'otter'.activate({'python', 'r', 'nix', 'sh'})<CR>";
      key = "<leader>lt";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # persistence
    {
      action = "<cmd>lua require('persistence').load()<cr>";
      key = "<leader>as";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>lua require('persistence').load({ last = true })<cr>";
      key = "<leader>al";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # ChatGPT
    {
      action = "<cmd>ChatGPT<cr>";
      key = "<leader>cg";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>ChatGPTActAs<cr>";
      key = "<leader>ca";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>ChatGPTEditWithInstruction<cr>";
      key = "<leader>ce";
      mode = "v";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      action = "<cmd>ChatGPTRun ";
      key = "<leader>cr";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # Neogen
    {
      action = "<cmd>lua require('neogen').generate()<cr>";
      key = "<leader>dg";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # Devdocs telescope
    {
      action = "<cmd>DevdocsOpenCurrentFloat<cr>";
      key = "<leader>td";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # New file at current location
    {
      action = ":e %:h/";
      key = "<leader>nf";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # Get highlight at cursor
    {
      action = "<cmd>lua vim.notify(vim.inspect(vim.treesitter.get_captures_at_cursor(0)))<CR>";
      key = "<leader>lh";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
      };
    }
  ];
}
