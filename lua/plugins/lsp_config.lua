-- LSP Config
return {
    {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- Add your on_attach and capabilities here or require from elsewhere
      local on_attach = function(_, bufnr)
      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = false,
      })

        local opts = { buffer = bufnr }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, bufopts)
        vim.keymap.set('n', ']d', vim.diagnostic.goto_next, bufopt)
      end

      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Setup for each server
      lspconfig.clangd.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })

      lspconfig.jdtls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })

      lspconfig.rust_analyzer.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
   

      lspconfig.omnisharp.setup({
        cmd = {vim.fn.expand( "~/.local/share/nvim/mason/packages/omnisharp/OmniSharp"),
                "--languageserver",
                "--hostPID",
                tostring(vim.fn.getpid()), },
                
        on_attach = on_attach,
        capabilities = capabilities,
      })
    end,

  }
}

