require("CopilotChat").setup({
	model = "claude-3.5-sonnet",
	mappings = {
		reset = {
			normal = "<C-x>",
			insert = "<C-x>",
		},
		submit_prompt = {
			normal = "<CR>",
			insert = "<C-CR>",
		},
	},
})
