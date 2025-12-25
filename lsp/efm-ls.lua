-- cargo install stylua
-- go install github.com/mattn/efm-langserver@latest
-- ref: https://github.com/creativenull/efmls-configs-nvim/tree/main

-- local python = require("utils.python")
--
local stylua = {
  formatCanRange = true,
  formatCommand = "stylua --color Never ${--range-start:charStart} ${--range-end:charEnd} --stdin-filepath '${INPUT}' -",
  formatStdin = true,
  rootMarkers = { "stylua.toml", ".stylua.toml" },
}

-- local pylint_exe = python.find_script_executable("pylint")
--
-- local pylint = {
--   prefix = "pylint",
--   lintSource = "efm/pylint",
--   rootMarkers = { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", ".pylintrc" },
--   lintCommand = string.format([[%s --source-roots=. --score=no "${INPUT}"]], pylint_exe),
--   lintStdin = false,
--   lintFormats = { "%.%#:%l:%c: %t%.%#: %m" },
-- }

---@type vim.lsp.Config
return {
  cmd = { "efm-langserver" },
  roor_markers = { ".git" },
  filetypes = {
    "lua",
    -- "python",
  },
  init_options = {
    documentFormatting = true,
    documentRangeFormatting = true,
    hover = true,
    documentSymbol = true,
    codeAction = true,
    completion = true,
  },
  settings = {
    languages = {
      lua = { stylua },
      -- python = { pylint },
    },
  },
}
