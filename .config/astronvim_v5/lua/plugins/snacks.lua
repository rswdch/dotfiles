return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    picker = {
      sources = {
        buffers = {
          current = false,
          sort_lastused = true,
        }
      }
    }
  }
}
