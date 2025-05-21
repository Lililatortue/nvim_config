return {
  {
    "nvim-telescope/telescope.nvim",
    depedencies = {"nvim-lua/plenary.nvim"},
    config = function()
      require("telescope").setup({
          
      defaults = {
        layout_config = {
          horizontal = { preview_width = 0.6 },
      },
        sorting_strategy = "ascending",
      },
    })
      vim.keymap.set("n", "<leader>s", "<cmd>Telescope find_files<CR>", { desc = "Find Files" })
      vim.keymap.set("n", "<leader>sg", "<cmd>Telescope live_grep<CR>", { desc = "Live Grep" })    
    end,
  }

}

