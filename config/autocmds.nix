{
  autoCmd = [
    {
      event = [ "BufWinEnter" ];
      callback = {
        __raw = ''
          function()
              vim.cmd "set formatoptions-=cro"
            end
        '';
      };
    }
    {
      event = [ "FileType" ];
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
      event = [ "CmdWinEnter" ];
      callback = {
        __raw = ''
          function()
              vim.cmd "quit"
            end
        '';
      };
    }
    {
      event = [ "VimResized" ];
      callback = {
        __raw = ''
          function()
              vim.cmd "tabdo wincmd ="
          end
        '';
      };
    }
    {
      event = [ "FileType" ];
      pattern = [ "gitcommit" "markdown" "NeogitCommitMessage" ];
      callback = {
        __raw = ''
          function()
              vim.cmd [[
                  setlocal spell
                  setlocal wrap
              ]]
          end
        '';
      };
    }
    {
      event = [ "CursorHold" ];
      callback = {
        __raw = ''
          function()
              local status_ok, luasnip = pcall(require, "luasnip")
              if not status_ok then
                return
              end
              if luasnip.expand_or_jumpable() then
                vim.cmd [[silent! lua require("luasnip").unlink_current()]]
              end
          end
        '';
      };
    }
  ];
}
