local lspconfig = require("lspconfig")
local servers = require("user.lsp.mason")

for _, server in pairs(servers) do
	local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
	local opts = {
		capabilities = lsp_capabilities,
	}

	local server_settings = require("user.lsp.settings." .. server)
	local server_config = vim.tbl_deep_extend("force", server_settings, opts)

	lspconfig[server].setup(server_config)
end
