local vimOpt = vim.opt

vimOpt.number = true
vimOpt.relativenumber = true

--TAB
vim.opt.expandtab = true -- Converte TAB em espaços
vim.opt.tabstop = 4      -- Mostra a largura de um TAB como 4 espaços
vim.opt.shiftwidth = 4   -- Número de espaços usados para cada nível de indentação
vim.opt.softtabstop = 4  -- Número de espaços que um <Tab> insere no modo Insert
