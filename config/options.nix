{
  config.options = {
    backup = false;
    cmdheight = 1;
    conceallevel = 1;
    fileencoding = "utf-8";
    hlsearch = true;
    incsearch = true;
    mouse = "a";
    smartcase = true;
    smartindent = true;
    splitbelow = true;
    splitright = true;
    swapfile = false;
    undofile = true;
    updatetime = 300;
    writebackup = false;
    expandtab = true;
    shiftwidth = 4;
    tabstop = 4;
    cursorline = true;
    number = true;
    relativenumber = true;
    signcolumn = "yes";
    wrap = false;
    scrolloff = 8;
    guifont = "Rec Mono Semicasual:h12";
    listchars = {
      eol = "󰌑";
      tab = " ";
      trail = "•";
      nbsp = "␣";
    };
    list = false;
    showbreak = "↳ ";
    foldmethod = "expr";
    foldnestmax = 20;
    foldminlines = 2;
    foldlevel = 99;
    foldlevelstart = 99;
    foldenable = true;
    foldexpr = "nvim_treesitter#foldexpr()";
  };
}
