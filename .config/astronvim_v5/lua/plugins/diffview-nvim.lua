return {
  { -- further customize the options set by the community
    "sindrets/diffview.nvim",
    opts = {
      default_args = {
        DiffviewOpen = { "--imply-local" },
      },
    },
  },
}
