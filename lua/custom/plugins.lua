local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
  {
    "kdheepak/lazygit.nvim",
    lazy = false,
  },
  {
    "ntpeters/vim-better-whitespace",
    lazy = false,
  },
  {
    "heavenshell/vim-pydocstring",
    lazy = false,
  },
  {
    "wfxr/minimap.vim",
    lazy = false,
  },
  {
    "catppuccin/nvim",
    lazy = false,
  },

  -- sql
  {
    "xemptuous/sqlua.nvim",
    lazy = false,
    config = function()
      require("sqlua").setup()
    end,
  },
  -- markdown render
  {
    "ellisonleao/glow.nvim",
    lazy = true,
    config = true,
    cmd = "Glow",
  },

  -- chatgpt ui
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup {
        openai_params = {
          model = "ModelCloud/Meta-Llama-3.1-70B-Instruct-gptq-4bit",
          frequency_penalty = 0,
          presence_penalty = 0,
          max_tokens = 4095,
          temperature = 0.2,
          top_p = 0.1,
          n = 1,
        },
        openai_edit_params = {
          model = "ModelCloud/Meta-Llama-3.1-70B-Instruct-gptq-4bit",
          frequency_penalty = 0,
          presence_penalty = 0,
          temperature = 0,
          top_p = 1,
          n = 1,
        },
        popup_input = {
          submit = "<C-M>",
        },
      }
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
}

return plugins
