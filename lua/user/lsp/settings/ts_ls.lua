return {
	filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact", "astro" },
	on_attach = function(client)
		client.server_capabilities.document_formatting = false
	end,
	settings = {
		implicitProjectConfiguration = {
			checkJs = true,
		},
	},
}
