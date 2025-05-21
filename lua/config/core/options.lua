   
vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

   opt.relativenumber = true --insertion des chiffre relatif
   opt.number  = true 

   opt.tabstop = 2
   opt.shiftwidth = 2 
   opt.expandtab = true
   opt.autoindent = true
   
-- search setting
   opt.ignorecase = true
   opt.smartcase = true -- si tu utilise mixed case dans ton search

   


