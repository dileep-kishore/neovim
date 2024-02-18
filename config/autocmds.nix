{
  autoCmd = [
    {
      event = ["BufWinEnter"];
      callback = {
        __raw = ''
          function()
              vim.cmd "set formatoptions-=cro"
          end
        '';
      };
    }
    {
      event = ["FileType"];
      pattern = [
        "netrw"
        "Jaq"
        "qf"
        "git"
        "help"
        "man"
        "lspinfo"
        "oil"
        "spectre_panel"
        "lir"
        "DressingSelect"
        "tsplayground"
        ""
      ];
      callback = {
        __raw = ''
          function()
            vim.cmd [[
              nnoremap <silent> <buffer> q :close<CR>
              set nobuflisted
            ]]
          end
        '';
      };
    }
    {
      event = ["CmdWinEnter"];
      callback = {
        __raw = ''
          function()
              vim.cmd "quit"
            end
        '';
      };
    }
    {
      event = ["VimResized"];
      callback = {
        __raw = ''
          function()
              vim.cmd "tabdo wincmd ="
          end
        '';
      };
    }
  ];
}
