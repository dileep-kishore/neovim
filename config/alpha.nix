{
  extraConfigLua = ''
    local status_ok, alpha = pcall(require, "alpha")
    if not status_ok then
        return
    end

    local dashboard = require "alpha.themes.dashboard"
    dashboard.section.header.val = {
      "                                                                       ";
      "                                                                       ";
      "                                                                       ";
      "                                                                       ";
      "                                                                       ";
      "                                                                       ";
      "                                                                       ";
      "                                                                     ";
      "       ████ ██████           █████      ██                     ";
      "      ███████████             █████                             ";
      "      █████████ ███████████████████ ███   ███████████   ";
      "     █████████  ███    █████████████ █████ ██████████████   ";
      "    █████████ ██████████ █████████ █████ █████ ████ █████   ";
      "  ███████████ ███    ███ █████████ █████ █████ ████ █████  ";
      " ██████  █████████████████████ ████ █████ █████ ████ ██████ ";
      "                                                                       ";
      "                                                                       ";
      "                                                                       ";
      "                                                                       ";
      "                                                                       ";
      "                                                                       ";
    }
    dashboard.section.buttons.val = {
        dashboard.button("f", "  Find file", ":Telescope find_files theme=dropdown<CR>"),
        dashboard.button("e", "  New file", ":ene <BAR> startinsert theme=dropdown<CR>"),
        dashboard.button("p", "  Find project", ":Telescope projects theme=dropdown<CR>"),
        dashboard.button("r", "󱝩  Recently used files", ":Telescope oldfiles theme=dropdown<CR>"),
        dashboard.button("t", "󱁴  Find text", ":Telescope live_grep theme=dropdown<CR>"),
        dashboard.button("x", "  Quit Neovim", ":qa<CR>"),
    }

    local function footer()
        -- NOTE: requires the cowfortune package to work
        local handle = io.popen "fortune | cowsay"
        local fortune = handle:read "*a"
        handle:close()
        return fortune
    end

    -- dashboard.section.footer.val = footer()
    dashboard.section.footer.val = "Amor Fati"

    dashboard.section.footer.opts.hl = "Type"
    dashboard.section.header.opts.hl = "Include"
    dashboard.section.buttons.opts.hl = "Keyword"

    dashboard.opts.opts.noautocmd = false
    vim.cmd([[autocmd User AlphaReady lua vim.b.miniindentscope_disable = true]])
    alpha.setup(dashboard.opts)
  '';
}
