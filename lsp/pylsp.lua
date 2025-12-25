-- https://github.com/python-lsp/python-lsp-server/blob/develop/CONFIGURATION.md
-- https://github.com/python-lsp/python-lsp-server
-- https://pylint.pycqa.org/en/stable/user_guide/configuration/all-options.html
--
-- ```bash
-- uv tool install 'python-lsp-server[all]'
-- ```

-- to check for current configuration
-- ```bash
--
-- pylint --generate-toml-config
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
      configurationSources = { "pylint" },
      plugins = {
        pylint = {
          enable = true,
          args = {},
        },
        yapf = {
          enabled = false,
        },
        signature = {
          formatter = "ruff",
        },
        pycodestyle = {
          enabled = false,
        },
        flake8 = {
          enabled = false,
        },
        jedi_definition = {
          enabled = false,
        },
        jedi_hover = {
          enabled = false,
        },
        jedi_signature_help = {
          enabled = false,
        },
        jedi_symbols = {
          enabled = false,
        },
        jedi_references = {
          enable = false,
        },
        jedi_type_definition = {
          enabled = false,
        },
      },
    },
  },
}
