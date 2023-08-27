-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,}
	use 'nvim-treesitter/playground'
  --install nerdtree
  use 'preservim/nerdtree'
  --install nvim-tree
  --use 'nvim-tree/nvim-tree.lua'
  --install floaterm
  use 'voldikss/vim-floaterm'
	use "nvim-lua/plenary.nvim"
	use "ThePrimeagen/harpoon"
--use "hrsh7th/cmp-nvim-lsp"

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
	-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
			suggestion = { 
				enabled = true,
				auto_trigger = true,
			},

			})
		end,
	}


end)
