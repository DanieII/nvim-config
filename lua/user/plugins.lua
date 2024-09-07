local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("rebelot/kanagawa.nvim")
	use("nvim-tree/nvim-web-devicons")
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim")
	use("nvim-treesitter/nvim-treesitter")
	use({ "akinsho/bufferline.nvim", tag = "*" })
	use({ "nvim-tree/nvim-tree.lua", commit = "7282f7de8aedf861fe0162a559fc2b214383c51c" })
	use("neovim/nvim-lspconfig")
	use({
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"typescript-language-server",
				"astro@1.0.8",
			},
		},
	})
	use("nvim-lualine/lualine.nvim")
	use({ "L3MON4D3/LuaSnip", dependencies = { "rafamadriz/friendly-snippets" } })
	use("hrsh7th/nvim-cmp")
	use("saadparwaiz1/cmp_luasnip")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")
	use("jose-elias-alvarez/null-ls.nvim")
	use("windwp/nvim-autopairs")
	use("rafamadriz/friendly-snippets")
	use("nvim-treesitter/playground")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
