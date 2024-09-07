local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

-- .prettierrc.json file for Astro formatting to work
-- {
--   "semi": false,
--   "singleQuote": true,
--   "plugins": ["prettier-plugin-astro"],
--   "overrides": [
--     {
--       "files": "*.astro",
--       "options": {
--         "parser": "astro"
--       }
--     }
--   ]
-- }

null_ls.setup({
	debug = false,
	sources = {
		formatting.stylua,
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.prettier.with({
			extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
			extra_filetypes = { "astro" },
		}),
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({ async = false })
				end,
			})
		end
	end,
})
