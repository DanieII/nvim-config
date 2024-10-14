require("nvim-treesitter.configs").setup({
	ensure_installed = { "lua", "python", "javascript", "typescript", "astro", "dockerfile", "json", "yaml" },
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
})
