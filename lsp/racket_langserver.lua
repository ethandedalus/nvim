return {
  setup = function()
    local lsp = require "lspconfig"

    local c = vim.lsp.protocol.make_client_capabilities()
    c.textDocument.completion.completionItem.snippetSupport = true
    c.textDocument.completion.completionItem.resolveSupport = {
      properties = {
        "documentation",
        "detail",
        "additionalTextEdits",
      },
    }

    local on_attach = function(client, bufnr)
      -- enable completion triggered by <C-x><C-o>

      -- if client.resolved_capabilities and client.resolved_capabilities.code_lens then
      -- end
    end

    local capabilities = require("cmp_nvim_lsp").default_capabilities(c)

    return {
      cmd = { "racket", "-l", "racket-langserver" },
      filetypes = { "racket", "rkt" },
      root_dir = lsp.util.root_pattern { "info.rkt", ".git" },
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end,
}
