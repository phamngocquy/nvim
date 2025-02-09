local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "python",
    "go",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    -- "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- my stuff
    "ansible-language-server",
    "awk-language-server",
    "bash-language-server",
    "black",
    "buf-language-server",
    "docker-compose-language-service",
    "dockerfile-language-server",
    "fixjson",
    "gopls",
    "isort",
    "mypy",
    "prettier",
    "pylint",
    "pyright",
    "ruby-lsp",
    "ruff",
    "ruff-lsp",
    "shfmt",
    "sqlls",
    "sqls",
    "stylua",
    "tree-sitter-cli",
    "yaml-language-server",
    "yamlfmt",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
