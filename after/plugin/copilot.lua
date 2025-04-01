require("CopilotChat").setup({
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
