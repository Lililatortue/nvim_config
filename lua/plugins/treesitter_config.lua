return{
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "c", "cpp", "rust", "java", "c_sharp"},
        highlight = { enable = true },
      
      })
    end,
  }
}
