return {
	{
		'nvim-treesitter/nvim-treesitter',
		config = function()
			require('nvim-treesitter.configs').setup({
				ensure_installed = { "go", "lua", "c", "cpp" },
				auto_install = true,
				highlight = {
					enable = true,
				}
			})
		end
	}
}
