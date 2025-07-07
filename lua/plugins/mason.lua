--automatically installs dependency requires for lsp's
  


return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
      vim.cmd("MasonUpdate")
    end
  },


  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "williamboman/mason.nvim",
    
    },
    config = function()
    
      local lspconfig = require("lspconfig")
      local handlers = require("plugins.lsp_config")
    end,
  },
}

