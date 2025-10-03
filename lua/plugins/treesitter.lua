return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		lazy = false,
		build = ":TSUpdate",
		opts = {
			ensure_installed = { "lua", "python", "javascript", "typescript" },
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
			},
		},
	},
}
