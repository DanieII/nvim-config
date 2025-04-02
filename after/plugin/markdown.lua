require("render-markdown").setup({
	file_types = { "markdown", "copilot-chat" },
	heading = {
		position = "inline",
	},
	code = { position = "right", width = "block", left_pad = 2, right_pad = 4, border = "thick" },
})
