---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>c"] = { "<cmd> ChatGPT <CR>", "Toggle chatgpt" },
    ["<leader>ci"] = { "<cmd> ChatGPTEditWithInstructions <CR>", "Toggle ChatGPTEditWithInstructions" },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
