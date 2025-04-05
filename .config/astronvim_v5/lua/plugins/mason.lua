if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- install language servers
        "clangd",
        "css-lsp",
        "emmet-ls",
        "eslint-lsp",
        "html-lsp",
        "json-lsp",
        "lua-language-server",
        "vtsls",

        -- install formatters
        "prettierd",
        "shfmt",
        "stylua",

        -- install debuggers
        "debugpy",
        "js-debug-adapter",

        -- install any other package
        "tree-sitter-cli",
        "eslint_d",
      },
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      handlers = {
        prettierd = function()
          require("null-ls").register(require("null-ls").builtins.formatting.prettierd.with {
            condition = function(utils)
              return utils.root_has_file "package.json"
                or utils.root_has_file ".prettierrc"
                or utils.root_has_file ".prettierrc.json"
                or utils.root_has_file ".prettierrc.js"
            end,
          })
        end,
        -- -- For eslint_d:
        -- eslint_d = function()
        --   require("null-ls").register(require("null-ls").builtins.diagnostics.eslint_d.with {
        --     condition = function(utils)
        --       return utils.root_has_file "package.json"
        --         or utils.root_has_file ".eslintrc.json"
        --         or utils.root_has_file ".eslintrc.js"
        --     end,
        --   })
        -- end,
      },
    },
  },
}
