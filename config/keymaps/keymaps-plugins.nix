{
  config.keymaps = [
    # Vim-tmux-navigator
    {
      action = "<cmd><C-U>TmuxNavigateLeft<CR>";
      key = "<C-h>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "vim-tmux navigate left";
      };
    }
    {
      action = "<cmd><C-U>TmuxNavigateDown<CR>";
      key = "<C-j>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "vim-tmux navigate down";
      };
    }
    {
      action = "<cmd><C-U>TmuxNavigateUp<CR>";
      key = "<C-k>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "vim-tmux navigate up";
      };
    }
    {
      action = "<cmd><C-U>TmuxNavigateRight<CR>";
      key = "<C-l>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "vim-tmux navigate right";
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
        desc = "Alpha dashboard";
      };
    }

    # Oil
    {
      action = "<cmd>Oil<CR>";
      key = "-";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Oil";
      };
    }

    # mini.files
    {
      action = "<cmd>lua require('mini.files').open()<CR>";
      key = "<leader>/";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Open mini.files";
      };
    }

    # Luasnip
    {
      action = "<cmd>lua require'luasnip'.expand()<CR>";
      key = "<C-k>";
      mode = "i";
      options = {
        silent = true;
        desc = "Expand snippet";
      };
    }

    ## Git
    {
      action = "<cmd>lua require('gitsigns').stage_buffer()<CR>";
      key = "<leader>ga";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Stage buffer";
      };
    }
    {
      action = "<cmd>Neogit commit<CR>";
      key = "<leader>gc";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Neogit commit";
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
        desc = "Next hunk";
      };
    }
    {
      action = "<cmd>lua require('gitsigns').prev_hunk()<cr>";
      key = "[h";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Previous hunk";
      };
    }
    {
      action = "<cmd>lua require('gitsigns').preview_hunk_inline()<cr>";
      key = "<leader>hp";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Preview hunk inline";
      };
    }
    {
      action = "<cmd>lua require('gitsigns').blame_line({full=true})<cr>";
      key = "<leader>gb";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Blame line";
      };
    }
    {
      action = "<cmd>lua require('gitsigns').stage_hunk()<cr>";
      key = "<leader>hs";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Stage hunk";
      };
    }
    {
      action = "<cmd>lua require('gitsigns').undo_stage_hunk()<cr>";
      key = "<leader>hu";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Undo stage hunk";
      };
    }
    {
      action = "<cmd>lua require('gitsigns').reset_hunk()<cr>";
      key = "<leader>hr";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Reset hunk";
      };
    }
    {
      action = "<cmd>Gitsigns diffthis HEAD<cr>";
      key = "<leader>gD";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Diff HEAD";
      };
    }
    # Neogit
    {
      action = "<cmd>Neogit kind=tab<CR>";
      key = "<leader>gg";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Neogit";
      };
    }
    # Diffview
    {
      action = "<cmd>DiffviewOpen<CR>";
      key = "<leader>gd";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Diffview";
      };
    }
    {
      action = "<cmd>DiffviewFileHistory<CR>";
      key = "<leader>gh";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Diffview file history";
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
        desc = "LazyGit";
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
        desc = "Telescope find buffer";
      };
    }
    {
      action = "<cmd>Telescope frecency workspace=CWD theme=dropdown<cr>";
      key = "<leader>o";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Telescope frecency";
      };
    }
    {
      action = "<cmd>Telescope undo<cr>";
      key = "<leader>su";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Telescope undo";
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
        desc = "Trouble toggle";
      };
    }
    {
      action = "<cmd>Trouble workspace_diagnostics<cr>";
      key = "<leader>xw";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Trouble workspace diagnostics";
      };
    }
    {
      action = "<cmd>Trouble document_diagnostics<cr>";
      key = "<leader>xd";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Trouble document diagnostics";
      };
    }
    {
      action = "<cmd>Trouble loclist<cr>";
      key = "<leader>xl";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Trouble loclist";
      };
    }
    {
      action = "<cmd>Trouble quickfix<cr>";
      key = "<leader>xq";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Trouble quickfix";
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
        desc = "LSP diagnostics at cursor";
      };
    }
    {
      action = "<cmd>Lspsaga code_action<cr>";
      key = "<leader>la";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Lspsaga code action";
      };
    }
    {
      action = "<cmd>Telescope diagnostics theme=dropdown<cr>";
      key = "<leader>ld";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Telescope diagnostics";
      };
    }
    {
      action = "<cmd>Lspsaga peek_definition<cr>";
      key = "<leader>lp";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Lspsaga peek definition";
      };
    }
    {
      action = "<cmd>Lspsaga finder<cr>";
      key = "<leader>lf";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Lspsaga finder";
      };
    }
    {
      action = "<cmd>LspInfo<cr>";
      key = "<leader>li";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "LSP info";
      };
    }
    {
      action = "<cmd>Lspsaga diagnostic_jump_next<CR>";
      key = "]d";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "next Lspsaga diagnostic";
      };
    }
    {
      action = "<cmd>Lspsaga diagnostic_jump_prev<cr>";
      key = "[d";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "previous Lspsaga diagnostic";
      };
    }
    {
      action = "<cmd>lua vim.lsp.codelens.run()<cr>";
      key = "<leader>ll";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Run code lens";
      };
    }
    {
      action = ":IncRename ";
      key = "<leader>lr";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Incremental rename (file)";
      };
    }
    {
      action = "<cmd>Lspsaga lsp_rename ++project<cr>";
      key = "<leader>lR";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Project-wide rename";
      };
    }
    {
      action = "<cmd>Telescope lsp_document_symbols theme=dropdown<cr>";
      key = "<leader>ls";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Telescope document symbols";
      };
    }
    {
      action = "<cmd>Telescope lsp_dynamic_workspace_symbols theme=dropdown<cr>";
      key = "<leader>lS";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Telescope workspace symbols";
      };
    }
    {
      action = "<cmd>Lspsaga outline<cr>";
      key = "<leader>lo";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Lspsaga outline";
      };
    }
    # lspsaga
    {
      action = "<cmd>Lspsaga incoming_calls<cr>";
      key = "<leader>lI";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Lspsaga incoming calls";
      };
    }
    {
      action = "<cmd>Lspsaga outgoing_calls<cr>";
      key = "<leader>lO";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Lspsaga outgoing calls";
      };
    }
    {
      action = "<cmd>Lspsaga hover_doc<cr>";
      key = "K";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Lspsaga hover doc";
      };
    }
    {
      action = "<cmd>Lspsaga goto_definition<cr>";
      key = "gd";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Lspsaga goto definition";
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
        desc = "Todo trouble";
      };
    }
    {
      action = "<cmd>TodoTelescope theme=ivy<CR>";
      key = "<leader>st";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Todo telescope";
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
        desc = "Telescope projects";
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
        desc = "DAP toggle breakpoint";
      };
    }
    {
      action = "<cmd>lua require'dap'.continue()<CR>";
      key = "<leader>dc";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "DAP continue";
      };
    }
    {
      action = "<cmd>lua require'dapui'.toggle()<CR>";
      key = "<leader>do";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "DAP toggle UI";
      };
    }

    # Terminal
    # NOTE: I have not set keybindings to toggle these terminals
    {
      action = "<cmd>ToggleTerm size=10 direction=horizontal<CR>";
      key = "<leader>Th";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "ToggleTerm horizontal";
      };
    }
    {
      action = "<cmd>ToggleTerm size=80 direction=vertical<CR>";
      key = "<leader>Tv";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "ToggleTerm vertical";
      };
    }

    # GrugFar
    {
      action = "<cmd>GrugFar<CR>";
      key = "<leader>sr";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "GrugFar replace";
      };
    }
    {
      action = "<cmd>lua require('ssr').open()<CR>";
      key = "<leader>sR";
      mode = ["n" "x"];
      options = {
        noremap = true;
        silent = true;
        desc = "SSR (structured) replace";
      };
    }

    # Flash treesitter highlight
    {
      action = "<cmd>lua require('flash').treesitter()<CR>";
      key = "<leader>y";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Flash treesitter";
      };
    }

    # Grapple
    {
      action = "<cmd>Grapple tag<CR><cmd>lua vim.notify('Added to grapple', 'info')<CR>";
      key = "<leader>mm";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Grapple tag";
      };
    }
    {
      action = "<cmd>Grapple untag<CR><cmd>lua vim.notify('Removed from grapple', 'info')<CR>";
      key = "<leader>md";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Grapple untag";
      };
    }
    {
      action = "<cmd>Grapple open_tags<CR>";
      key = "<leader>ml";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Grapple show";
      };
    }
    {
      action = "<cmd>Grapple cycle_forward<CR><cmd>lua vim.notify('Grapple next', 'info')<CR>";
      key = "]g";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Grapple next";
      };
    }
    {
      action = "<cmd>Grapple cycle_backward<CR><cmd>lua vim.notify('Grapple prev', 'info')<CR>";
      key = "[g";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Grapple prev";
      };
    }
    {
      action = "<cmd>Grapple select index=1<CR>";
      key = "<leader>m1";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Grapple select 1";
      };
    }
    {
      action = "<cmd>Grapple select index=2<CR>";
      key = "<leader>m2";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Grapple select 2";
      };
    }
    {
      action = "<cmd>Grapple select index=3<CR>";
      key = "<leader>m3";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Grapple select 3";
      };
    }
    {
      action = "<cmd>Grapple select index=4<CR>";
      key = "<leader>m4";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Grapple select 4";
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
        desc = "Open all folds";
      };
    }
    {
      action = "<cmd>lua require('ufo').closeAllFolds()<CR>";
      key = "zM";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Close all folds";
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
        desc = "Yank history";
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
        desc = "Extract function";
      };
    }
    {
      action = "<cmd>lua require('refactoring').refactor('Extract Function To File')<cr>";
      key = "<leader>rf";
      mode = "x";
      options = {
        noremap = true;
        silent = true;
        desc = "Extract function to file";
      };
    }
    {
      action = "<cmd>lua require('refactoring').refactor('Extract Variable')<cr>";
      key = "<leader>rv";
      mode = "x";
      options = {
        noremap = true;
        silent = true;
        desc = "Extract variable";
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
        desc = "Zen mode";
      };
    }
    {
      action = "<cmd>Twilight<CR>";
      key = "<leader>zt";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Twilight";
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
        desc = "Otter (lsp) activate";
      };
    }

    {
      action = "<cmd>SessionSave<cr>";
      key = "<leader>Rs";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Save session";
      };
    }
    {
      action = "<cmd>SessionRestore<cr>";
      key = "<leader>Rr";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Load last session";
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
        desc = "ChatGPT";
      };
    }
    {
      action = "<cmd>ChatGPTCompleteCode<cr>";
      key = "<leader>cc";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "ChatGPT complete code";
      };
    }
    {
      action = "<cmd>ChatGPTActAs<cr>";
      key = "<leader>ca";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "ChatGPT act as";
      };
    }
    {
      action = "<cmd>ChatGPTEditWithInstruction<cr>";
      key = "<leader>ce";
      mode = "v";
      options = {
        noremap = true;
        silent = true;
        desc = "ChatGPT edit with instruction";
      };
    }
    {
      action = ":ChatGPTRun ";
      key = "<leader>cr";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "ChatGPT run";
      };
    }

    # Neogen
    {
      action = "<cmd>lua require('neogen').generate()<cr>";
      key = "<leader>lg";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Generate docstring";
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
        desc = "New file (current dir)";
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
        desc = "Get highlight at cursor";
      };
    }

    # Flash
    {
      action = "<cmd>lua require('flash').jump()<CR>";
      key = "s";
      mode = ["n" "x" "o"];
      options = {
        noremap = true;
        silent = true;
        desc = "Flash jump";
      };
    }

    # TreeSJ
    {
      action = "<cmd>lua require('treesj').toggle()<CR>";
      key = "<leader>j";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Toggle treeSJ";
      };
    }
  ];
}
