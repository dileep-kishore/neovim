# Neovim Plugins

This file lists all the Neovim plugins used in this project.

## Nixvim Plugins

These plugins are defined via Nixvim (files in `plugins.nix` and related):

- lz-n
- nui
- repeat
- friendly-snippets
- web-devicons
- aerial
- spider
- nvim-autopairs
- tmux-navigator
- trouble
- todo-comments
- comment
- sleuth
- illuminate
- yanky
- refactoring
- better-escape
- nvim-bqf
- marks
- markdown-preview
- otter
- cloak
- git-conflict
- grug-far
- highlight-colors

## Nixpkgs VimPlugins

These plugins are imported from Nixpkgs via the attribute `pkgs.vimPlugins`:

- plenary-nvim
- lualine-nvim
- tabby-nvim
- alpha-nvim
- ssr-nvim
- iron-nvim
- vim-just
- quarto-nvim
- img-clip-nvim
- tabout-nvim
- highlight-undo-nvim

## Custom Plugins

These plugins are built using `pkgs.vimUtils.buildVimPlugin`:

- nvim-modes
- nvim-incline
- websocket-nvim
- neopyter

## Additional Plugins from Config

- alpha
- arrow
- autosession
- avante
- autocmds
- autotag
- blink-cmp
- catppuccin
- chatgpt
- codeium
- comment
- conform
- copilot
- context
- dap
- diffview
- flash
- folding
- gitsigns
- image
- inc-rename
- indent-blankline
- incline
- keymaps-general
- keymaps-plugins
- keymaps-snacks
- lint
- lsp
- lspsaga
- lualine
- matchup
- mini
- molten
- modes
- neogit
- neogen
- neopyter
- octo
- obsidian
- oil
- options
- quarto
- render-markdown
- rose-pine
- snacks
- specs
- tabby
- textobjects
- treesitter
- treesj
- wtf
- whichkey
- zen

---

> [!NOTE]
> The lists are automatically generated using Aider
