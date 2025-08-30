return {
	"ojroques/vim-oscyank",
	config = function()
		vim.keymap.set("v","<C-c>","<cmd>OSCYankVisual<CR>")
	end
}
