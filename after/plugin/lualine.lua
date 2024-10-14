local function lsp_and_formatters()
	local active_servers = {}
	local current_buf = vim.api.nvim_get_current_buf()
	local buf_lsps = vim.lsp.get_clients({ bufnr = current_buf })

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
		theme = "auto",
		component_separators = "",
		section_separators = "",
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
	extensions = { "nvim-tree" },
})
