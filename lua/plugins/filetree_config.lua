return{
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
      require("nvim-tree").setup({
   --rendering of the file tree 
        renderer ={
          highlight_git = true,
          icons = {
            show = {
              file = true,
              folder = true,
            },
          },
        },
  -- git configuration 
        git = {
          enable = true,
          ignore = false,
          show_on_dirs = true,
        },
        update_focused_file = {
          enable = true,
          update_root = true,
        },
      })

      vim.keymap.set("n", "<leader>f", "<cmd>NvimTreeToggle<CR>", { desc = "toggle file tree" })
    end,
  }
}
