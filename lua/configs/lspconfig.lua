local M = {}

M.on_init = function(client, _)
  if client.supports_method "textDocument/semanticTokens" then
    client.server_capabilities.semanticTokensProvider = nil
  end
end

M.capabilities = vim.lsp.protocol.make_client_capabilities()

M.defaults = function()
  vim.lsp.config("*", {
    capabilities = M.capabilities,
    on_init = M.on_init,
  })
end

return M
