local servers = { "lua_ls", "pyright", "ts_ls", "emmet_language_server", "tailwindcss", "astro" }

local function get_mason_valid_servers(servers)
	local valid_servers = {}

	for _, server in ipairs(servers) do
		if server == "ts_ls" then
			table.insert(valid_servers, "tsserver")
		else
			table.insert(valid_servers, server)
		end
	end

	return valid_servers
end

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = get_mason_valid_servers(servers),
	automatic_installation = true,
})

return servers
