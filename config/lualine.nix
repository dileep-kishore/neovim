{
  extraConfigLua = ''
    local status_ok, lualine = pcall(require, "lualine")
    if not status_ok then
        return
    end

    local hide_in_width = function()
        return vim.fn.winwidth(0) > 80
    end

    local diagnostics = {
        "diagnostics",
        sources = { "nvim_diagnostic" },
        sections = { "error", "warn" },
        symbols = { error = " ", warn = " " },
        colored = true,
        update_in_insert = false,
        separator = "",
        always_visible = true,
        padding = { left = 1, right = 1 },
    }

    local diff = {
        "diff",
        colored = true,
        symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
        cond = hide_in_width,
        update_in_insert = true,
        always_visible = true,
    }

    local mode = {
        "mode",
        fmt = function(str) return " [" .. str:sub(1, 1) .. "]" end,
        padding = { left = 1, right = 0 },
    }

    local filename = {
        "filename",
        file_status = true,
        path = 1,
        cond = hide_in_width,
        symbols = { modified = " ", readonly = " ", unnamed = "[No Name]", newfile = "[New]" },
        separator = "",
        padding = { left = 1, right = 1 },
    }

    local icononly_filetype = {
        "filetype",
        icon_only = true,
        separator = "",
        padding = { left = 1, right = 0 },
    }

    local center_comp = {
        "%=",
        separator = "",
    }

    local function modified()
        if vim.bo.modified then
            return " "
        elseif vim.bo.modifiable == false or vim.bo.readonly == true then
            return " "
        end
        return ""
    end

    local modified_section = {
        modified,
        color = { fg = "#ca1243" },
    }

    local function get_lsp_status()
        local buf_clients = vim.lsp.buf_get_clients()
        local buf_client_names = ""
        for _, client in pairs(buf_clients) do
            -- table.insert(buf_client_names, client.name)
            if buf_client_names == "" then
                buf_client_names =  client.name
            else
                buf_client_names = buf_client_names .. ", " .. client.name
            end
        end
        -- return table.concat(buf_client_names, self.options.split)
        return buf_client_names
    end

    local lsp_status = {
        get_lsp_status,
        separator = "|"
    }

    local filetype = {
        "filetype",
        icons_enabled = true,
    }

    local branch = {
        "b:gitsigns_head",
        icons_enabled = true,
        icon = "",
        separator = "|",
        padding = { left = 1, right = 1 },
    }

    local cmd = {
      function() return require("noice").api.status.command.get() end,
      cond = function() return package.loaded["noice"] and require("noice").api.status.command.has() end,
    }

    local macro = {
        require("noice").api.statusline.mode.get,
        cond = require("noice").api.statusline.mode.has,
        color = { fg = "#eb6f92" },
    }

    -- cool function for progress
    local progress_custom = function()
        local current_line = vim.fn.line "."
        local total_lines = vim.fn.line "$"
        local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
        local line_ratio = current_line / total_lines
        local index = math.ceil(line_ratio * #chars)
        return chars[index]
    end

    local progress = {
       "progress",
       separator = "",
       padding = { left = 0, right = 0 }
    }

    local location = {
        "location",
        cond = hide_in_width,
        separator = "|",
        padding = { left = 0, right = 0 },
    }

    local spaces = function()
        return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
    end

    lualine.setup {
        options = {
            icons_enabled = true,
            globalstatus = true,
            theme = "rose-pine",
            component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
            disabled_filetypes = { "alpha", "dashboard", "NvimTree", "Outline" },
            always_divide_middle = true,
        },
        sections = {
            lualine_a = { mode },
            lualine_b = { branch, diff },
            lualine_c = { icononly_filetype, filename, diagnostics },
            lualine_x = { macro, cmd, "encoding"  },
            lualine_y = { lsp_status, filetype },
            lualine_z = { location, progress, progress_custom },
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { icononly_filetype, filename },
            lualine_x = { location },
            lualine_y = {},
            lualine_z = {},
        },
        tabline = {},
        extensions = {},
    }
  '';
}
