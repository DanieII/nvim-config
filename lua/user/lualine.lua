local moonfly = require("lualine.themes.moonfly")
local bg_color = "#C6C6C6"

moonfly.normal.a.bg = bg_color
moonfly.visual.a.bg = bg_color
moonfly.replace.a.bg = bg_color

require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = moonfly,
		component_separators = "",
		section_separators = "",
		disabled_filetypes = {},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch" },
		lualine_c = { "filename" },
		lualine_x = { "filetype" },
		lualine_y = {},
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = { "nvim-tree" },
})
