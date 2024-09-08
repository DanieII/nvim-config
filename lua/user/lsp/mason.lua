local servers = { "lua_ls", "pyright", "tsserver", "emmet_language_server", "tailwindcss", "astro" }

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})

return servers
