  vim.g.mapleader = " "

	local keymap = vim.keymap
  --state control 
  keymap.set("i", "jk", "<ESC>", { desc = "exit insert mode" }) --deviens insert mode  
  --highlight
  
  --terminal shortcuts
  
    --tmux
   
    --create popup
    keymap.set('n', "<leader>tmp", function()
               vim.fn.system('tmux display-popup -E "bash"')
             end, {silent = true})
      
