return {
  "ggandor/leap.nvim",
  enabled = true,
  keys = {
    { "s", mode = { "n", "o" }, desc = "Leap Forward to" },
    { "S", mode = { "n", "o" }, desc = "Leap Backward to" },
    { "gs", mode = { "n", "o" }, desc = "Leap from Windows" },
  },
  config = function(_, opts)
    local leap = require "leap"
    for k, v in pairs(opts) do
      leap.opts[k] = v
    end
    --
    -- Registers defaults regardless of keys table
    -- leap.add_default_mappings(true)

    -- Removes visual x-mode
    vim.keymap.set({ "n", "o" }, "s", "<Plug>(leap-forward)")
    vim.keymap.set({ "n", "o" }, "S", "<Plug>(leap-backward)")
    vim.keymap.set({ "n", "o" }, "gs", "<Plug>(leap-from-window)")

    -- vim.keymap.del({ "x", "o" }, "x")
    -- vim.keymap.del({ "x", "o" }, "X")
  end,
}
