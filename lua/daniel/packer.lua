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
	use("nvim-lua/plenary.nvim")
	use("windwp/nvim-autopairs")
	use("nvim-tree/nvim-web-devicons")
	use("rebelot/kanagawa.nvim")
	use("nvim-treesitter/nvim-treesitter")
	use({ "nvim-tree/nvim-tree.lua", commit = "7282f7de8aedf861fe0162a559fc2b214383c51c" })
	use("nvim-telescope/telescope.nvim")

	use("akinsho/bufferline.nvim")
	use("nvim-lualine/lualine.nvim")

	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")
	use("jose-elias-alvarez/null-ls.nvim")

	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")
	use("L3MON4D3/LuaSnip")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
