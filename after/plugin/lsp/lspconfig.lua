local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Lua
lspconfig.lua_ls.setup({
	capabilities = capabilities,
	settings = {

		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
})

-- Python
lspconfig.pyright.setup(capabilities)

-- JavaScript/Typescript
lspconfig.ts_ls.setup({
	capabilities = capabilities,
	filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
	on_attach = function(client)
		client.server_capabilities.document_formatting = false
		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentFormattingRangeProvider = false
	end,
	init_options = {
		preferences = {
			disableSuggestions = true,
		},
	},
	single_file_support = false,
	settings = {
		typescript = {
			inlayHints = {
				includeInlayParameterNameHints = "literal",
				includeInlayParameterNameHintsWhenArgumentMatchesName = false,
				includeInlayFunctionParameterTypeHints = true,
				includeInlayVariableTypeHints = false,
				includeInlayPropertyDeclarationTypeHints = true,
				includeInlayFunctionLikeReturnTypeHints = true,
				includeInlayEnumMemberValueHints = true,
			},
		},
		javascript = {
			inlayHints = {
				includeInlayParameterNameHints = "all",
				includeInlayParameterNameHintsWhenArgumentMatchesName = false,
				includeInlayFunctionParameterTypeHints = true,
				includeInlayVariableTypeHints = true,
				includeInlayPropertyDeclarationTypeHints = true,
				includeInlayFunctionLikeReturnTypeHints = true,
				includeInlayEnumMemberValueHints = true,
			},
		},
		diagnostics = {
			ignoredCodes = { 6133 },
		},
	},
})

-- Astro
lspconfig.astro.setup({
	capabilities = capabilities,
	init_options = {
		typescript = {
			serverPath = vim.fs.normalize("/usr/local/lib/node_modules/typescript/lib/tsserverlibrary.js"),
		},
	},
})

-- CSS
lspconfig.cssls.setup({
	capabilities = capabilities,
	init_options = {
		provideFormatter = false,
	},
})

-- Tailwind
lspconfig.tailwindcss.setup({
	capabilities = capabilities,
	filetypes = { "javascriptreact", "typescriptreact", "html", "astro", "htmldjango" },
})

-- Emmet
lspconfig.emmet_language_server.setup({
	capabilities = capabilities,
	filetypes = { "javascriptreact", "typescriptreact", "html", "htmldjango", "astro" },
})

-- GDScript
lspconfig.gdscript.setup({
	capabilities = capabilities,
	cmd = vim.lsp.rpc.connect("127.0.0.1", 6005),
})
