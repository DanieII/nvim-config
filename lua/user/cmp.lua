local cmp = require("cmp")
local select_opts = { behavior = cmp.SelectBehavior.Select }

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
		["<CR>"] = cmp.mapping.confirm({ select = false }),
		["<Tab>"] = cmp.mapping.select_next_item(select_opts),
		["<S-Tab>"] = cmp.mapping.select_prev_item(select_opts),
	}),
	sources = {
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "path" },
	},
})
