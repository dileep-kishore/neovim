{
  config.keymaps = [
    # Snacks pickers (find) [f]
    {
      action = "<cmd>lua Snacks.picker.files()<CR>";
      key = "<leader>ff";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Find files";
      };
    }
    {
      action = "<cmd>lua Snacks.picker.buffers()<CR>";
      key = "<leader>fb";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Find buffers";
      };
    }
    {
      action = "<cmd>lua Snacks.picker.git_files()<CR>";
      key = "<leader>fg";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Find git files";
      };
    }
    {
      action = "<cmd>lua Snacks.picker.projects()<CR>";
      key = "<leader>fp";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Find projects";
      };
    }
    {
      action = "<cmd>lua Snacks.picker.jumps()<CR>";
      key = "<leader>fj";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Snacks jumplist";
      };
    }
    {
      action = "<cmd>lua Snacks.picker.marks()<CR>";
      key = "<leader>fm";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Snacks marks";
      };
    }

    # Snacks pickers (git) [g]
    {
      action = "<cmd>lua Snacks.picker.git_log()<CR>";
      key = "<leader>gL";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Git Log";
      };
    }
    {
      action = "<cmd>lua Snacks.picker.git_log_file()<CR>";
      key = "<leader>gf";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Git log file";
      };
    }

    # Snacks pickers (search) [s]
    {
      action = "<cmd>lua Snacks.picker.grep()<CR>";
      key = "<leader>sg";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Grep search (all)";
      };
    }
    {
      action = "<cmd>lua Snacks.picker.lines()<CR>";
      key = "<leader>sf";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Grep search (current file)";
      };
    }
    {
      action = "<cmd>lua Snacks.picker.grep_buffers()<CR>";
      key = "<leader>sb";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Grep search (buffers)";
      };
    }
    {
      action = "<cmd>lua Snacks.picker.todo_comments()<CR>";
      key = "<leader>st";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Find todos";
      };
    }

    # Snacks pickers (misc) [t]
    {
      action = "<cmd>lua Snacks.picker.command_history()<CR>";
      key = "<leader>tc";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Search command history";
      };
    }
    {
      action = "<cmd>lua Snacks.picker.registers()<CR>";
      key = "<leader>tr";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Search registers";
      };
    }
    {
      action = "<cmd>lua Snacks.picker.undo()<CR>";
      key = "<leader>tu";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Snacks undo";
      };
    }
    {
      action = "<cmd>lua Snacks.picker.help()<CR>";
      key = "<leader>th";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Search help";
      };
    }
    {
      action = "<cmd>lua Snacks.picker.highlights()<CR>";
      key = "<leader>tH";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Search highlights";
      };
    }
    {
      action = "<cmd>lua Snacks.picker.icons()<CR>";
      key = "<leader>ti";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Search icons";
      };
    }
    {
      action = "<cmd>lua Snacks.picker.keymaps()<CR>";
      key = "<leader>tk";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Search keymaps";
      };
    }
    {
      action = "<cmd>YankyRingHistory<CR>";
      key = "<leader>ty";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Search yank history";
      };
    }

    # Snacks pickers (lsp) [l]
    {
      action = "<cmd>lua Snacks.picker.diagnostics()<CR>";
      key = "<leader>ld";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Snacks diagnostics";
      };
    }
    {
      action = "<cmd>lua Snacks.picker.lsp_symbols()<CR>";
      key = "<leader>ls";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "LSP symbols";
      };
    }

    # Other keymaps
    {
      action = "<cmd>lua Snacks.rename.rename_file()<CR>";
      key = "<leader>rr";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Rename file";
      };
    }
    {
      action = "<cmd>lua Snacks.scratch()<CR>";
      key = "<leader>ns";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Toggle scratch buffer";
      };
    }
    {
      action = "<cmd>lua Snacks.terminal.toggle()<CR>";
      key = "<leader>T";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Toggle Snacks terminal";
      };
    }
  ];
}
