require("CopilotChat").setup({
	-- model = "claude-3.7-sonnet",
	mappings = {
		reset = {
			normal = "<C-x>",
			insert = "<C-x>",
		},
		submit_prompt = {
			normal = "<CR>",
			insert = "<C-CR>",
		},
		yank_diff = {
			normal = "gy",
			register = "+",
		},
		complete = {
			insert = "<Tab>",
		},
	},
	headers = {
		user = "" .. " ",
		assistant = "" .. " ",
	},
})

vim.g.copilot_no_tab_map = true
vim.g.copilot_filetypes = {
	["copilot-chat"] = false,
}
