return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspConfig = require("lspconfig")

		--On Lua LSP
		lspConfig.lua_ls.setup({})
	end
}
