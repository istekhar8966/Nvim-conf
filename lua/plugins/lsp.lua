return {
  -- 🧠 Treesitter for syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "html",
        "css",
        "javascript",
        "typescript",
        "rust",
        "c",
        "python",
        "lua", -- keep lua for neovim config highlighting
        "json",
      },
      highlight = { enable = true },
      indent = { enable = true },
    },
  },

  -- ⚙️ Mason: installer for LSPs, linters, formatters, DAPs
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = vim.list_extend(opts.ensure_installed or {}, {
        "html-lsp",
        "css-lsp",
        "emmet-language-server",
        "typescript-language-server",
        "rust-analyzer",
        "clangd",
        "pyright",
        "black", -- formatter for Python
        "prettier", -- formatter for web langs
      })
    end,
  },

  -- 🧩 LSP setup
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {},
        cssls = {},
        emmet_language_server = {},
        ts_ls = {}, -- JS/TS
        rust_analyzer = {},
        clangd = {},
        pyright = {},
      },
    },
  },

  -- ✨ Formatting and linting
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        rust = { "rustfmt" },
        c = { "clang-format" },
        python = { "black" },
      },
    },
  },
}
