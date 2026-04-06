return {
  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "sqlfluff" } },
  },
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      if not opts.formatters_by_ft then opts.formatters_by_ft = {} end

      if not opts.formatters then opts.formatters = {} end

      opts.formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "rustywind --write .", "prettier" },
        javascriptreact = { "rustywind --write .", "prettier" },
        ["_"] = { "trim_whitespace" },
      }
    end,
  },
}
