local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css", "js", "jsx", "javascriptreact", "javascript" } },
  b.diagnostics.eslint.with { filetypes = { "html", "markdown", "css", "js", "jsx", "javascriptreact", "javascript"} },
  -- others
  b.formatting.black.with { filetypes = { "python" } },
  b.formatting.gofmt.with { filetypes = { "go" } },
  b.formatting.shfmt.with { filetypes = { "sh" } },
  b.formatting.yamlfmt.with { filetypes = { "yml", "yaml" } },
  b.formatting.fixjson.with { filetypes = { "json", "jsonc" } },
  b.diagnostics.ruff.with { filetypes = { "python" } },
  b.formatting.clang_format.with {filetypes = {"cpp", "c"}},

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
