return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "AstroNvim/astrolsp", opts = {} },
  },
  config = function()
    -- set up servers configured with AstroLSP
    vim.tbl_map(require("astrolsp").lsp_setup, require("astrolsp").config.servers)

    require("lspconfig").eslint.setup {
      -- settings = {
      --   packageManager = "yarn",
      -- },
      ---@diagnostic disable-next-line: unused-local
      on_attach = function(_, bufnr)
        vim.api.nvim_create_autocmd("BufWritePre", {
          buffer = bufnr,
          command = "EslintFixAll",
        })
      end,
    }
  end,
}
