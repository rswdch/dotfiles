return {
  {
    "rmagatti/auto-session",
    dependencies = {
      "nvim-telescope/telescope.nvim", -- Only needed if you want to use sesssion lens
    },
    opts = {
      pre_save_cmds = { "Neotree close" },
      auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
    },
  },
}
