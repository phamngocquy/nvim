---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "chadracula",
  theme_toggle = { "chadracula", "chadracula" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  transparency = true,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

-- -- Remap <C-]> in insert mode to accept inline completion
-- vim.api.nvim_set_keymap(
--   "i",
--   "<C-]>",
--   '<cmd>lua vim.fn["tabbyml#tabby#inline_completion#service#Accept"]()<CR>',
--   { noremap = true, silent = true }
-- )

return M
