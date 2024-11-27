return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    local actions = require "telescope.actions"
    -- opts.defaults.colorscheme.enable_preview = true
    opts.defaults.mappings.n["dd"] = actions.delete_buffer
  end,
}
