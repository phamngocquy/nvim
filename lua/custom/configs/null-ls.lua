local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.prettier.with {
    filetypes = {
      "html",
      "markdown",
      "css",
      "js",
      "jsx",
      "javascriptreact",
      "javascript",
      "tsx",
      "typescript",
      "typescriptreact",
    },
  },
  b.diagnostics.eslint.with {
    filetypes = {
      "html",
      "markdown",
      "css",
      "js",
      "jsx",
      "javascriptreact",
      "javascript",
      "tsx",
      "typescript",
      "typescriptreact",
    },
  },
  -- others
  b.formatting.black.with { filetypes = { "python" } },
  b.formatting.gofmt.with { filetypes = { "go" } },
  b.formatting.shfmt.with { filetypes = { "sh" }, extra_args = { "-i", "2", "-ci", "-sr" } },
  b.formatting.yamlfmt.with { filetypes = { "yml", "yaml" } },
  b.formatting.fixjson.with { filetypes = { "json", "jsonc" } },
  b.formatting.clang_format.with { filetypes = { "cpp", "c" } },
  b.formatting.sqlfmt.with { filetypes = { "sql" } },

  b.diagnostics.mypy.with { filetypes = { "python" } },

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,
}

null_ls.setup {
  debug = false,
  sources = sources,
  temp_dir = "/tmp",
}
