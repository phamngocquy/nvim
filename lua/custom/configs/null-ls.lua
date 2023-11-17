local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes
  b.formatting.black.with { filetypes = { "python" } },
  b.formatting.gofmt.with { filetypes = { "go" } },
  b.formatting.shfmt.with { filetypes = { "sh" } },
  b.formatting.yamlfmt.with { filetypes = { "yml", "yaml" } },
  b.diagnostics.ruff.with { filetypes = { "python" } },

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
