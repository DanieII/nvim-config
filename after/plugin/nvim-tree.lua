local api = require("nvim-tree.api")

-- Tree navigation functions
local function edit_or_open()
	local node = api.tree.get_node_under_cursor()

	if node.nodes ~= nil then
		-- expand or collapse folder
		api.node.open.edit()
	else
		-- open file
		api.node.open.edit()
		-- Close the tree if file was opened
		api.tree.close()
	end
end

local function vsplit_preview()
	local node = api.tree.get_node_under_cursor()

	if node.nodes ~= nil then
		-- expand or collapse folder
		api.node.open.edit()
	else
		-- open file as vsplit
		api.node.open.vertical()
	end

	-- Finally refocus on tree if it was lost
	api.tree.focus()
end

require("nvim-tree").setup({
	update_focused_file = {
		enable = true,
	},
	renderer = {
		root_folder_modifier = ":t",
		icons = {
			glyphs = {
				default = "",
				symlink = "",
				folder = {
					arrow_open = "",
					arrow_closed = "",
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
					symlink_open = "",
				},
				git = {
					unstaged = "",
					staged = "S",
					unmerged = "",
					renamed = "➜",
					untracked = "U",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},
	on_attach = function(bufnr)
		local opts = { buffer = bufnr, noremap = true, silent = true, nowait = true }
		vim.keymap.set("n", "l", edit_or_open, opts)
		vim.keymap.set("n", "s", vsplit_preview, opts)
		vim.keymap.set("n", "h", api.tree.close, opts)
	end,
})

-- Automatically open file upon creation
api.events.subscribe(api.events.Event.FileCreated, function(file)
	vim.cmd("edit " .. vim.fn.fnameescape(file.fname))
end)

-- Automatically close nvim-tree when quitting Neovim
vim.api.nvim_create_autocmd({ "QuitPre" }, {
	nested = false,
	callback = function(e)
		local tree = require("nvim-tree.api").tree

		-- Nothing to do if tree is not opened
		if not tree.is_visible() then
			return
		end

		vim.api.nvim_cmd({ cmd = "qall" }, {})
	end,
})
