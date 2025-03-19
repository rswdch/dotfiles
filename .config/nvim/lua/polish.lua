-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Custom Keymap Overrides
-- vim.keymap.set({'n', 'v'}, 'x', '"_x')
-- vim.keymap.set({'n', 'v'}, 'd', '""d')


-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}

-- Enable cfilter
vim.cmd("packadd cfilter")

-- vim.api.nvim_create_autocmd('VimEnter', {
--   once = true, -- Run only once
--   callback = function()
--     vim.cmd('colorscheme ' .. (vim.o.background == 'light' and 'modus' or 'gruvbox'))
--   end
-- })
