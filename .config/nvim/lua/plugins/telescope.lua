return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-live-grep-args.nvim",
      -- This will not install any breaking changes.
      -- For major updates, this must be adjusted manually.
      version = "^1.0.0",
    },
  },
  opts = function(plugin, opts)
    require "astronvim.plugins.configs.telescope"(plugin, opts)

    -- Custom mappings
    local actions = require "telescope.actions"
    -- opts.defaults.colorscheme.enable_preview = true
    opts.defaults.mappings.n["dd"] = actions.delete_buffer

    -- Custom plugins
    local telescope = require "telescope"
    telescope.load_extension "live_grep_args"
    local lga_actions = require "telescope-live-grep-args.actions"
    opts.defaults.mappings.i["<C-i>"] = lga_actions.quote_prompt { postfix = " -S --iglob " }
  end,
}
