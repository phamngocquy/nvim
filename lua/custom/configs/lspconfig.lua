local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "python" },

  settings = {
    pyright = {
      -- Using Ruff's import organizer
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        -- autoSearchPaths = true,
        -- diagnosticMode = "workspace",
        -- useLibraryCodeForTypes = true,
        ignore = { "*" },
      },
    },
  },
}

lspconfig.ruff_lsp.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    settings = {
      args = {},
    },
  },
}

lspconfig.yamlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.ansiblels.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.sqlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.bufls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.bashls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.docker_compose_language_service.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.dockerls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true,
    },
  },
}

lspconfig.html.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.ruby_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
