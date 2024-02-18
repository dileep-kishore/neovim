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
        always_visible = true,
    }

    local diff = {
        "diff",
        colored = true,
        symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
        cond = hide_in_width,
    }

    local mode = {
        "mode",
        fmt = function(str) return " [" .. str:sub(1, 1) .. "]" end,
    }

    local filename = {
        "filename",
        file_status = true,
        path = 1,
        cond = hide_in_width,
        symbols = { modified = " ", readonly = " ", unnamed = "[No Name]", newfile = "[New]" },
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

    local filetype = {
        "filetype",
        icons_enabled = true,
    }

    local branch = {
        "b:gitsigns_head",
        icons_enabled = true,
        icon = " ",
    }

    local location = {
        "location",
    }

    -- cool function for progress
    local progress = function()
        local current_line = vim.fn.line "."
        local total_lines = vim.fn.line "$"
        local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
        local line_ratio = current_line / total_lines
        local index = math.ceil(line_ratio * #chars)
        return chars[index]
    end

    local spaces = function()
        return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
    end

    lualine.setup {
        options = {
            icons_enabled = true,
            theme = "auto",
            component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
            disabled_filetypes = { "alpha", "dashboard", "NvimTree", "Outline" },
            always_divide_middle = true,
        },
        sections = {
            lualine_a = { mode },
            lualine_b = { branch, diff },
            lualine_c = { filename },
            -- lualine_x = { "encoding", "fileformat", "filetype" },
            lualine_x = { diagnostics, "encoding", filetype },
            lualine_y = { location },
            lualine_z = { progress },
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { filename },
            lualine_x = { location },
            lualine_y = {},
            lualine_z = {},
        },
        tabline = {},
        extensions = {},
    }
  '';
}
