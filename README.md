<!-- markdownlint-disable -->
<h1 align="center">
    <a name="top" title="nvim-nix">
        nvim-nix v2
    </a>
</h1>
<br />
<div align="center">
  <a href="https://github.com/dileep-kishore/neovim">
    <img src="./assets/nvim-nix.png">
  </a>
  <p>
    <strong>
      A <a href="https://neovim.io/">Neovim</a> configuration as a <a href="https://nixos.org/">Nix</a> flake ❄️ template</br>
    </strong>
  </p>
<img src="https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white">
<img src="https://img.shields.io/badge/nix-0175C2?style=for-the-badge&logo=NixOS&logoColor=white">
<img src="https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white">
</div>
<!-- markdownlint-restore -->

<!-- markdownlint-disable MD013 -->

This flake uses [nixvim](https://github.com/nix-community/nixvim) to configure neovim in a declarative manner.
Since this configuration uses nixvim, this means that it is entirely written in [Nix](https://nixos.org/manual/nix/stable/language/index.html) with some custom Lua sprinkled in here and there.

## Running the flake

To run this nix flake simply run the following command

```sh
nix run github:dileep-kishore/neovim
```

> [!NOTE]
> You will need to install the `nix` package manager before you can run the previous command

Or you can use [home-manager](https://github.com/nix-community/home-manager) to add this flake to your setup like so:

```nix
{
    inputs.neovim = {
      url = "github:dileep-kishore/neovim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
}
```

And then install it by adding `inputs.neovim.packages.${system}.default` to your packages

## Gallery

|             _Dashboard_              |
| :----------------------------------: |
| ![dashboard](./assets/dashboard.png) |

|            _Editor_            |
| :----------------------------: |
| ![editor](./assets/editor.png) |

|                _Autocompletions_                 |
| :----------------------------------------------: |
| ![autocompletions](./assets/autocompletions.png) |

|          _Git_           |
| :----------------------: |
| ![git](./assets/git.png) |

|             _Telescope_              |
| :----------------------------------: |
| ![telescope](./assets/telescope.png) |

## Features

- Works out of the box without needing to install any external dependencies.
  - This includes lsp servers, linters, formatters or other packages.
- A lot of the default options and autocmds that you would find on a distribution like [LunarVim](lunarvim.org/) are configured out of the box
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) syntax highlighting is enabled and [rose-pine](https://github.com/rose-pine/neovim) theme is set as the default
- Uses custom statusline configured using [lualine.nvim](https://github.com/nvim-treesitter/nvim-treesitter)
- Custom tabline configured using [tabby.nvim](https://github.com/nanozuki/tabby.nvim)
- Includes [neogit](https://github.com/NeogitOrg/neogit) and [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) for working with git
- Lsp servers, linters and formatters for configured for Python, Nix, Lua, Javascript, Typescript, Julia, Bash, Rust, Go and many more
- Debugging is supported through the [Debugging adapter protocol (DAP) plugin](https://github.com/mfussenegger/nvim-dap).
  - This is currently only setup to work with Python
- Completions are enabled through [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- Snippets are set up using [luasnip](https://github.com/L3MON4D3/LuaSnip) and [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim) for fuzzy file finding and searching
- Better file navigation using [Oil.nvim](https://github.com/stevearc/oil.nvim) and [Grapple.nvim](https://github.com/cbochs/grapple.nvim)
- AI capabilities are enabled through [Avante.nvim](https://github.com/yetone/avante.nvim) and [ChatGPT.nvim](https://github.com/jackMort/ChatGPT.nvim) and [supermaven-nvim](https://github.com/supermaven-inc/supermaven-nvim)
- Indent lines are enabled using [mini.indentscope](https://github.com/echasnovski/mini.indentscope)
- The dashboard is set up using [alpha-nvim](https://github.com/goolord/alpha-nvim)
- And many other features! Check out default.nix and the plugins/ folder
