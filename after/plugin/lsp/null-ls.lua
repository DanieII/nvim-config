local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
	root_dir = require("null-ls.utils").root_pattern(".null-ls-root", "Makefile", ".git", "package.json"),
	debug = false,
	sources = {
		formatting.stylua,
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.djlint,
		formatting.gdformat,
		formatting.prettier.with({ extra_filetypes = { "astro" } }),
		diagnostics.eslint.with({
			extra_args = function(params)
				local file_types = { "js", "mjs", "cjs", "ts", "mts", "cts" }
				for _, file_type in pairs(file_types) do
					local file_exists = io.open(params.root .. "/eslint.config." .. file_type, "r") ~= nil

					if file_exists then
						return {}
					end
				end

				return {
					"--config",
					vim.fn.expand("~/eslint.config.mjs"), -- Home directory file
				}
			end,
		}), -- Requires configuration file in project root or home directory. Generate one with "npm init @eslint/config@latest"
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
