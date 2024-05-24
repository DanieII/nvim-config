local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use "wbthomason/packer.nvim"
  use "rebelot/kanagawa.nvim"
  use "nvim-tree/nvim-web-devicons"
  use "nvim-lua/plenary.nvim"
  use "nvim-telescope/telescope.nvim"
  use "nvim-treesitter/nvim-treesitter"
  use { 'akinsho/bufferline.nvim', tag = "*" }
  use { "nvim-tree/nvim-tree.lua", commit = "7282f7de8aedf861fe0162a559fc2b214383c51c" }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
