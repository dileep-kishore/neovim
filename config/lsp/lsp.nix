{
  plugins.lsp = {
    enable = true;
    servers = {
      astro = {enable = false;};
      bashls = {enable = true;};
      dockerls = {enable = true;};
      eslint = {enable = true;};
      gopls = {enable = true;};
      jsonls = {enable = true;};
      harper_ls = {
        enable = true;
        filetypes = ["markdown"];
      };
      ltex = {
        enable = true;
        settings.checkFrequency = "save";
        filetypes = [
          "bib"
          "bibtex"
          "context"
          "context.tex"
          "gitcommit"
          "html"
          "latex"
          "mail"
          "org"
          "pandoc"
          "plaintex"
          "quarto"
          "rmd"
          "rnoweb"
          "rsweave"
          "tex"
          "xhtml"
        ];
      };
      texlab = {enable = true;};
      marksman = {enable = true;};
      nil_ls = {enable = true;};
      # Python
      pyright = {enable = true;};
      ruff_lsp = {
        enable = false;
        extraOptions = {
          init_options = {
            settings = {
              fixAll = false;
              organizeImports = false;
            };
          };
        };
      };
      # Julia
      julials = {
        enable = true;
        package = null;
      };
      ts_ls = {enable = true;};
      lua_ls = {enable = true;};
      rust_analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };
      svelte = {enable = true;};
      tailwindcss = {
        enable = true;
        filetypes = [
          "aspnetcorerazor"
          "astro"
          "astro-markdown"
          "blade"
          "clojure"
          "django-html"
          "htmldjango"
          "edge"
          "eelixir"
          "ejs"
          "erb"
          "eruby"
          "gohtml"
          "gohtmltmpl"
          "haml"
          "handlebars"
          "hbs"
          "html"
          "htmlangular"
          "html-eex"
          "heex"
          "jade"
          "leaf"
          "liquid"
          "mdx"
          "mustache"
          "njk"
          "nunjucks"
          "php"
          "razor"
          "slim"
          "twig"
          "css"
          "less"
          "postcss"
          "sass"
          "scss"
          "stylus"
          "sugarss"
          "javascript"
          "javascriptreact"
          "reason"
          "rescript"
          "typescript"
          "typescriptreact"
          "vue"
          "svelte"
          "templ"
        ];
      };
      typst_lsp = {enable = false;};
      # vscode extracted
      cssls = {enable = true;};
      html = {enable = true;};
    };
    keymaps = {
      diagnostic = {
        "]d" = "goto_next";
        "[d" = "goto_prev";
      };
      lspBuf = {
        K = "hover";
        gD = "references";
        gd = "definition";
        gi = "implementation";
        gt = "type_definition";
      };
    };
  };

  # Custom diagnostic signs for LSP
  extraConfigLua = builtins.readFile ./diagnostic_signs.lua;
}
