return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        options = {
            icons_enabled = true,
            theme = "auto",
        },
        extensions = { "nvim-tree" },
        sections = {
            lualine_a = { 'mode' },
            lualine_b = { 'branch', 'diff', 'diagnostics' },
            lualine_c = { 'filename' },
            lualine_x = { "lsp_status", 'filetype' },
            lualine_y = { 'progress' },
            lualine_z = { 'location' }
        },
    }
}
