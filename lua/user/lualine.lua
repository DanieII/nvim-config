local moonfly = require("lualine.themes.moonfly")
local bg_color = "#C6C6C6"

moonfly.normal.a.bg = bg_color
moonfly.visual.a.bg = bg_color
moonfly.replace.a.bg = bg_color

local function lsp_and_formatters()
	local active_servers = {}
	local buf_lsps = vim.lsp.get_clients()

	if #buf_lsps == 0 then
		return "LSP Inactive"
	end

	for _, lsp in ipairs(buf_lsps) do
		if lsp.name ~= "null-ls" then
			table.insert(active_servers, lsp.name)
		end
	end

	local null_ls_sources = require("null-ls.sources").get_available(vim.bo.filetype)
	for _, formatter in ipairs(null_ls_sources) do
		table.insert(active_servers, formatter.name)
	end

	local active_servers_as_str = table.concat(active_servers, ", ")

	return "[" .. active_servers_as_str .. "]"
end

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
		lualine_x = { lsp_and_formatters },
		lualine_y = { "filetype" },
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
