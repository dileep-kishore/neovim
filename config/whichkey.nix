{
  plugins.which-key = {
    enable = true;
    layout = {align = "center";};
    window = {
      border = "rounded";
      position = "bottom";
      winblend = 10;
      margin = {
        top = 1;
        right = 1;
        bottom = 2;
        left = 1;
      };
    };
    registrations = {
      "<Leader>aa" = "Alpha dashboard";
      "-" = "Toggle Oil";
      "<C-k>" = "Expand luasnip";
      "<leader>ga" = "Gwrite";
      "<leader>gc" = "Git commit";
      "]x" = "Gitsigns next hunk";
      "[x" = "GitSigns prev hunk";
      "<leader>gp" = "Gitsigns preview hunk";
      "<leader>gs" = "Gitsigns stage hunk";
      "<leader>gu" = "GitSigns undo stage hunk";
      "<leader>gr" = "GitSigns reset hunk";
      "<leader>gd" = "Gitsigns diffthis HEAD";
      "<leader>gg" = "Neogit";
      "<leader>gD" = "Open Diffview";
      "<leader>gh" = "FileHistory Diffview";
      "<leader>gl" = "LazyGit";
      "<leader>fb" = "Tele buffers";
      "<leader>o" = "Tele find_files";
      "<leader>xx" = "Trouble toggle";
      "<leader>xw" = "Trouble diagnostics (workspace)";
      "<leader>xd" = "Trouble diagnostics";
      "<leader>xl" = "Trouble loclist";
      "<leader>xq" = "Trouble quickfix";
      "<leader>la" = "Lsp code action";
      "<leader>ld" = "Tele diagnostics";
      "<leader>lp" = "Lsp peek definition";
      "<leader>lf" = "Lsp references";
      "<leader>li" = "Lsp info";
      "]e" = "Lsp next diagnostic";
      "[e" = "Lsp prev diagnostic";
      "<leader>ll" = "Lsp code lens";
      "<leader>lr" = "Lsp rename";
      "<leader>lR" = "Lsp lsp rename (project)";
      "<leader>ls" = "Tele lsp symbols";
      "<leader>lS" = "Tele lsp symbols (workspace)";
      "<leader>lo" = "Lsp outline";
      "<leader>Li" = "Lsp incoming calls";
      "<leader>Lo" = "Lsp outgoing calls";
      "K" = "Lsp hover doc";
      "gd" = "Lsp goto definition";
      "<leader>xt" = "Trouble todos";
      "<leader>st" = "Tele todos";
      "<leader>fp" = "Tele projects";
      "<leader>db" = "DAP toggle breakpoint";
      "<leader>dc" = "DAP continue";
      "<leader>do" = "DAP UI toggle";
      "<leader>th" = "ToggleTerm (horizontal)";
      "<leader>tv" = "ToggleTerm (vertical)";
      "<leader>sr" = "Spectre replace";
      "<leader>sR" = "Spectre toggle";
      "<S-m>" = "Harpoon add";
      "<S-l>" = "Harpoon list";
      "<leader>h1" = "Harpoon 1";
      "<leader>h2" = "Harpoon 2";
      "zR" = "UFO open all folds";
      "zM" = "UFO close all folds";
      "<leader>ty" = "Tele yank history";
      "<leader>re" = "Refactor extract func";
      "<leader>rf" = "Refactor extract func (file)";
      "<leader>rv" = "Refactor extract var";
      "<leader>zz" = "ZenMode";
      "<leader>zt" = "Twilight";
      "<leader>lt" = "Otter activate lsp";
      "<leader>as" = "Persistence load (curr)";
      "<leader>al" = "Persistence load (prev)";
      "<leader>cg" = "ChatGPT";
      "<leader>ca" = "ChatGPTActAs";
      "<leader>ce" = "ChatGPTEditWithInstruction";
      "<leader>cr" = "ChatGPTRun";
      "<leader>dg" = "Generate docstring";
      "<leader>td" = "Browse devdocs";
      "<leader>nf" = "New file (current dir)";
    };
  };
}
