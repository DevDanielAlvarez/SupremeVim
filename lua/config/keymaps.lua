function registerKeyMap(mode,lhs,rhs, bothModes, opts)

	bothModes = bothModes or {}

	if bothModes == true then
		vim.keymap.set("i",lhs,rhs,opts)
		vim.keymap.set("n",lhs,rhs,opts)
		return
	end

	vim.keymap.set(mode,lhs,rhs,opts)
end
--Define Leader
vim.g.mapleader = " " --space bar
--Save
registerKeyMap("i","<C-S>","<Esc>:w<CR>",true)
--Quit
registerKeyMap("n","<leader>qq","<Esc>:q!<CR>")
