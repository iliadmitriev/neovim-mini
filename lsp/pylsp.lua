-- https://github.com/python-lsp/python-lsp-server
-- ```bash
-- uv tool install 'python-lsp-server[all]'
-- ```

---@type vim.lsp.Config
return {
  cmd = { "pylsp" },
  filetypes = { "python" },
  root_markers = {
    "pyproject.toml",
    "setup.py",
    "setup.cfg",
    "requirements.txt",
    "Pipfile",
    ".git",
  },
  settings = {
    pylsp = {
      plugins = {},
    },
  },
}
