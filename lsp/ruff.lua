---@type vim.lsp.Config
return {
  cmd = { "ruff", "server" },
  filetypes = { "python" },
  root_markers = { "pyproject.toml", "ruff.toml", ".git" },
  settings = {
    ["ruff"] = {
      logLevel = "none",
    },
  },
}
