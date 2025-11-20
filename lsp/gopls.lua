---@type vim.lsp.Config
return {
  cmd = { "gopls" },
  filetypes = { "go" },
  root_markers = { "go.mod", "go.sum", ".git" },
  settings = {
    gopls = {
      semanticTokens = true,
      hints = {
        assignVariableTypes = true,
        compositeLiteralFields = true,
        compositeLiteralTypes = true,
        constantValues = true,
        functionTypeParameters = true,
        parameterNames = true,
        rangeVariableTypes = true,
      },
    },
  },
}
