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

    # Oil
    {
      action = "<cmd>Oil --float<CR>";
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
      action = "<cmd>lua require('mini.files').open(vim.api.nvim_buf_get_name(0))<CR>";
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
      action = "<cmd>lua require('gitsigns').preview_hunk()<cr>";
      key = "<leader>hp";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Preview hunk inline";
      };
    }
    {
      action = "<cmd>lua require('gitsigns').preview_hunk_inline()<cr>";
      key = "<leader>hP";
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
      action = "<cmd>Neogit kind=split<CR>";
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
      action = "<cmd>lua Snacks.lazygit.open()<CR>";
      key = "<leader>gl";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "LazyGit";
      };
    }
    # Gitbrowse
    {
      action = "<cmd>lua Snacks.gitbrowse()<CR>";
      key = "<leader>go";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Git browse";
      };
    }

    ## LSP and diagnostics
    # Trouble
    {
      action = "<cmd>Trouble diagnostics toggle filter.buf=0 focus=true<CR>";
      key = "<leader>xx";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Trouble diagnostics (buffer)";
      };
    }
    {
      action = "<cmd>Trouble diagnostics toggle focus=true<CR>";
      key = "<leader>xX";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Trouble diagnostics (workspace)";
      };
    }
    {
      action = "<cmd>Trouble lsp toggle focus=true win.position=bottom<cr>";
      key = "<leader>xl";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Trouble lsp (def/ref/...)";
      };
    }
    {
      action = "<cmd>Trouble loclist<cr>";
      key = "<leader>xLu";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Trouble loclist";
      };
    }
    {
      action = "<cmd>Trouble symbols toggle focus=true win.position=bottom<cr>";
      key = "<leader>xs";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Trouble symbols (buffer)";
      };
    }
    {
      action = "<cmd>Trouble qflist toggle<cr>";
      key = "<leader>xq";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Trouble quickfix list";
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
      action = "<cmd>Trouble todo toggle filter.buf=0 focus=true<cr>";
      key = "<leader>xt";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Trouble todos (buffer)";
      };
    }
    {
      action = "<cmd>Trouble todo toggle focus=true<cr>";
      key = "<leader>xT";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Trouble todos (workspace)";
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
      action = "<cmd>CopilotChatToggle<cr>";
      key = "<leader>cc";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Copilot chat toggle";
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

    # NOTE: Disabled becuase I prefer to use Oil.nvim
    # New file at current location
    # {
    #   action = ":e %:h/";
    #   key = "<leader>nf";
    #   mode = "n";
    #   options = {
    #     noremap = true;
    #     silent = true;
    #     desc = "New file (current dir)";
    #   };
    # }

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
      key = "<leader><leader>";
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
      key = "gs";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Toggle treeSJ";
      };
    }

    # Image-Clip
    {
      action = "<cmd>PasteImage<cr>";
      key = "<leader>P";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Paste image from clipboard";
      };
    }

    # Literate note plugin keymaps
    {
      action = "<cmd>QuartoPreview %:p<cr>";
      key = "<leader>np";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Quarto preview";
      };
    }
    {
      action = "<cmd>MoltenInit<cr>";
      key = "<leader>ni";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Molten init";
      };
    }
    {
      action = "<cmd>MoltenEvaluateVisual<cr>gv<esc>";
      key = "<leader>nr";
      mode = "v";
      options = {
        noremap = true;
        silent = true;
        desc = "Molten evaluate visual selection";
      };
    }
    {
      action = ":noautocmd MoltenEnterOutput<cr>";
      key = "<leader>no";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Molten enter output";
      };
    }
    {
      action = "<cmd>MoltenHideOutput<cr>";
      key = "<leader>nh";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Molten hide output";
      };
    }

    # Obsidian keymaps
    {
      action = "<cmd>ObsidianNew<cr>";
      key = "<leader>on";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Obsidian new note";
      };
    }
    {
      action = "<cmd>ObsidianQuickSwitch<cr>";
      key = "<leader>of";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Obsidian quick switch";
      };
    }
    {
      action = "<cmd>ObsidianToday<cr>";
      key = "<leader>od";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Obsidian today";
      };
    }
    {
      action = "<cmd>ObsidianTemplate<cr>";
      key = "<leader>ot";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Obsidian template";
      };
    }
    {
      action = "<cmd>ObsidianLink<cr>";
      key = "<leader>ok";
      mode = "v";
      options = {
        noremap = true;
        silent = true;
        desc = "Obsidian link";
      };
    }
    {
      action = "<cmd>ObsidianBacklinks<cr>";
      key = "<leader>ob";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Obsidian backlinks";
      };
    }
    {
      action = "<cmd>ObsidianLinks<cr>";
      key = "<leader>ol";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Obsidian links";
      };
    }
    {
      action = "<cmd>ObsidianRename<cr>";
      key = "<leader>or";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Obsidian rename";
      };
    }
    {
      action = "<cmd>ObsidianTOC<cr>";
      key = "<leader>oo";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Obsidian table of contents";
      };
    }
  ];
}
