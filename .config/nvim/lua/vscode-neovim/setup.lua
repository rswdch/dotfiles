vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup {
  spec = {
    -- import your plugins
    { import = "lazyvim.plugins.extras.vscode" },
    { import = "vscode-neovim.plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  -- install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
}
