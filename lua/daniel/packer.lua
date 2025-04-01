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

	-- Colorscheme
	use("rebelot/kanagawa.nvim")

	-- Highlights
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

	-- Files
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		requires = { "nvim-lua/plenary.nvim" },
	})
	use({
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
	})
	use({
		"nvim-tree/nvim-tree.lua",
		commit = "7282f7de8aedf861fe0162a559fc2b214383c51c",
		requires = {
			"nvim-tree/nvim-web-devicons",
		},
	})

	-- Statusline
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

	-- Automatically close (), [], {}
	use("windwp/nvim-autopairs")

	-- LSP
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	use({ "nvimtools/none-ls.nvim", requires = { "nvimtools/none-ls-extras.nvim" } })
	use("jay-babu/mason-null-ls.nvim")

	-- Autocompletion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-nvim-lua")
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- Copilot
	use("github/copilot.vim")
	use("CopilotC-Nvim/CopilotChat.nvim")

	-- Markdown
	use({ "MeanderingProgrammer/render-markdown.nvim", requires = { "nvim-tree/nvim-web-devicons", opt = true } })

	if packer_bootstrap then
		require("packer").sync()
	end
end)
