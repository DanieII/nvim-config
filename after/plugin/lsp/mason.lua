require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"pyright",
		"ts_ls",
		"emmet_language_server",
		"tailwindcss",
		"astro",
		"cssls",
	},
	automatic_installation = true,
})

require("mason-null-ls").setup({
	ensure_installed = nil,
	automatic_installation = true,
})
