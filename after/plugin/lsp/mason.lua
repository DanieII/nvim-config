require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"pyright",
		"ts_ls",
		"astro",
		"cssls",
		"tailwindcss",
		"emmet_language_server",
		"intelephense",
	},
	automatic_installation = true,
	automatic_enable = false,
})

require("mason-null-ls").setup({
	ensure_installed = { "stylua", "black", "djlint", "prettier", "eslint", "gdformat", "phpcsfixer" },
	automatic_installation = true,
})
