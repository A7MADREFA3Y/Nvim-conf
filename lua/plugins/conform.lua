-- lua/plugins/conform.lua

return {
  "stevearc/conform.nvim",
  event = { "BufWritePre", "BufReadPre" },
  cmd = "ConformInfo",
  keys = {
    { "<leader>cf", function() require("conform").format({ async = true, timeout_ms = 500 }) end, mode = "n", desc = "Format" },
    { "<leader>cF", function() require("conform").format({ async = true, lsp_fallback = true, timeout_ms = 1000 }) end, mode = "n", desc = "Format (force)" },
    {
      "<leader>cI",
      "<cmd>ConformInfo<cr>",
      desc = "Conform Info",
    },
  },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      fish = { "fish_indent" },
      sh = { "shfmt" },
      -- typescript = { "prettierd", "prettier" },
      -- javascript = { "prettierd", "prettier" },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
    formatters = {
      injected = { options = { ignore_errors = true } },
    },
  },
}
