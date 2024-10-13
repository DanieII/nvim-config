require("nvim-treesitter.configs").setup({
	ensure_installed = { "lua", "python", "javascript", "typescript", "astro" },
	ignore_install = { "" },

	sync_install = false,
	auto_install = true,

	highlight = {
		enable = true,
		disable = { "" },
	},
})

require("nvim-treesitter.configs").setup({
	playground = {
		enable = true,
		disable = {},
		updatetime = 25,
		persist_queries = false,
		keybindings = {
			toggle_query_editor = "o",
			toggle_hl_groups = "i",
			toggle_injected_languages = "t",
			toggle_anonymous_nodes = "a",
			toggle_language_display = "I",
			focus_language = "f",
			unfocus_language = "F",
			update = "R",
			goto_node = "<cr>",
			show_help = "?",
		},
	},
})
