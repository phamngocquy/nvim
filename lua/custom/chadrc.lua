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

-- re-map tabby-ml
-- vim.api.nvim_buf_set_keymap(
--   0, -- Current buffer (equivalent to <buffer> in Vimscript)
--   "i", -- Mode: 'i' for insert mode
--   "<C-]>", -- Key
--   "tabby#inline_completion#service#Accept()", -- Command
--   {
--     noremap = false, -- Allow remapping (necessary for <script>)
--     silent = true,
--     expr = true, -- Evaluate as an expression
--     nowait = true,
--   }
-- )

return M
