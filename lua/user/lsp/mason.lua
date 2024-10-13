local servers = { "lua_ls", "pyright", "ts_ls", "emmet_language_server", "tailwindcss", "astro", "cssls" }

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})

return servers
