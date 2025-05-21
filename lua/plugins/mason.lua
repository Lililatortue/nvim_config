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

      for _, server in ipairs({"clangd", "rust_analyzer", "jdtls","lua_ls" }) do
        lspconfig[server].setup({
          on_attach = handlers.on_attach,
          capabilities = handlers.capabilities,
        })
      end
    end,
  },
}
