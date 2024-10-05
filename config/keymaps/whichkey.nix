{
  plugins.which-key = {
    enable = true;
    settings = {
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
        "<Leader>q" = "+Close";
        "<Leader>a" = "+Alpha dashboard";
        "<leader>g" = "+Git";
        "<leader>h" = "+Git hunk";
        "<leader>[" = "+prev";
        "<leader>]" = "+next";
        "<leader>f" = "+File search";
        "<leader>s" = "+Text search";
        "<leader>x" = "+Trouble";
        "<leader>l" = "+LSP";
        "<leader>d" = "+DAP";
        "<leader>t" = "+Telescope";
        "<leader>T" = "+ToggleTerm";
        "<leader>r" = "+Refactor";
        "<leader>z" = "+Zen";
        "<leader>R" = "+Auto-session";
        "<leader>c" = "+ChatGPT";
        "<leader>n" = "+New file";
        "<leader>m" = "+Grapple";
        "<leader>i" = "+Iron";
        "<leader>p" = "+Parameter swap";
        "<leader>cd" = "Diagnostics gpt";
        "<leader>cs" = "Diagnostics search";
      };
    };
  };
}
