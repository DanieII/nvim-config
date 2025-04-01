local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
	root_dir = require("null-ls.utils").root_pattern(".null-ls-root", "Makefile", ".git", "package.json"),
	debug = false,
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.black.with({ extra_args = { "--fast" } }),
		null_ls.builtins.formatting.djlint,
		null_ls.builtins.formatting.gdformat,
		null_ls.builtins.formatting.prettier.with({ extra_filetypes = { "astro" } }),
		null_ls.builtins.diagnostics.eslint,
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({
						async = false,
						filter = function(client)
							return client.name == "null-ls"
						end,
					})
				end,
			})
		end
	end,
})
