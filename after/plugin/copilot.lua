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
		yank_diff = {
			normal = "gy",
			register = "+",
		},
	},
	question_header = " " .. "" .. " ",
	answer_header = " " .. "" .. " ",
	error_header = " " .. "" .. " ",
})

vim.g.copilot_no_tab_map = true
vim.g.copilot_filetypes = {
	["copilot-chat"] = false,
}
