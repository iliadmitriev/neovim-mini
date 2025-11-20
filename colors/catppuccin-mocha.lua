local palette = {
  -- Base colors
  rosewater = "#f5e0dc",
  flamingo = "#f2cdcd",
  pink = "#f5c2e7",
  mauve = "#cba6f7",
  red = "#f38ba8",
  maroon = "#eba0ac",
  peach = "#fab387",
  yellow = "#f9e2af",
  green = "#a6e3a1",
  teal = "#94e2d5",
  sky = "#89dceb",
  sapphire = "#74c7ec",
  blue = "#89b4fa",
  lavender = "#b4befe",
  text = "#cdd6f4",
  subtext1 = "#bac2de",
  subtext0 = "#a6adc8",
  overlay2 = "#9399b2",
  overlay1 = "#7f849c",
  overlay0 = "#6c7086",
  surface2 = "#585b70",
  surface1 = "#45475a",
  surface0 = "#313244",
  base = "#1e1e2e",
  mantle = "#181825",
  crust = "#11111b",
}

local set_hl = vim.api.nvim_set_hl

-- Set highlight groups using the palette
set_hl(0, "Normal", { fg = palette.text, bg = palette.base })
set_hl(0, "Comment", { fg = palette.overlay0, italic = true })
set_hl(0, "Constant", { fg = palette.peach })
set_hl(0, "String", { fg = palette.green })
set_hl(0, "Character", { fg = palette.green })
set_hl(0, "Number", { fg = palette.peach })
set_hl(0, "Boolean", { fg = palette.mauve })
set_hl(0, "Float", { fg = palette.peach })
set_hl(0, "Identifier", { fg = palette.blue })
set_hl(0, "Function", { fg = palette.blue })
set_hl(0, "Statement", { fg = palette.mauve })
set_hl(0, "Conditional", { fg = palette.mauve })
set_hl(0, "Repeat", { fg = palette.mauve })
set_hl(0, "Label", { fg = palette.mauve })
set_hl(0, "Operator", { fg = palette.sky })
set_hl(0, "Keyword", { fg = palette.mauve })
set_hl(0, "Exception", { fg = palette.mauve })
set_hl(0, "PreProc", { fg = palette.mauve })
set_hl(0, "Include", { fg = palette.mauve })
set_hl(0, "Define", { fg = palette.mauve })
set_hl(0, "Macro", { fg = palette.mauve })
set_hl(0, "PreCondit", { fg = palette.mauve })
set_hl(0, "Type", { fg = palette.yellow })
set_hl(0, "StorageClass", { fg = palette.yellow })
set_hl(0, "Structure", { fg = palette.yellow })
set_hl(0, "Typedef", { fg = palette.yellow })
set_hl(0, "Special", { fg = palette.pink })
set_hl(0, "SpecialChar", { fg = palette.pink })
set_hl(0, "Tag", { fg = palette.pink })
set_hl(0, "Delimiter", { fg = palette.overlay2 })
set_hl(0, "SpecialComment", { fg = palette.overlay0, bold = true, italic = true })
set_hl(0, "Debug", { fg = palette.red })
set_hl(0, "Underlined", { underline = true })
set_hl(0, "Ignore", { fg = palette.surface1 })
set_hl(0, "Error", { fg = palette.red, bold = true, underline = true })
set_hl(0, "Todo", { fg = palette.mantle, bg = palette.yellow, bold = true })

-- UI related highlights
set_hl(0, "Cursor", { fg = palette.base, bg = palette.text })
set_hl(0, "Visual", { bg = palette.surface1 })
set_hl(0, "CursorLine", { bg = palette.surface0 })
set_hl(0, "CursorColumn", { bg = palette.surface0 })
set_hl(0, "ColorColumn", { bg = palette.surface0 })
set_hl(0, "LineNr", { fg = palette.surface1 })
set_hl(0, "CursorLineNr", { fg = palette.blue })
set_hl(0, "SignColumn", { fg = palette.base })
set_hl(0, "StatusLine", { fg = palette.subtext0, bg = palette.mantle })
set_hl(0, "StatusLineNC", { fg = palette.surface1, bg = palette.crust })
set_hl(0, "TabLine", { fg = palette.surface1, bg = palette.mantle })
set_hl(0, "TabLineSel", { fg = palette.text, bg = palette.surface0 })
set_hl(0, "TabLineFill", { fg = palette.mantle, bg = palette.crust })
set_hl(0, "VertSplit", { fg = palette.crust })
set_hl(0, "Folded", { fg = palette.subtext0, bg = palette.surface0 })
set_hl(0, "FoldColumn", { fg = palette.surface1, bg = palette.base })
set_hl(0, "EndOfBuffer", { fg = palette.base })
set_hl(0, "Terminal", { fg = palette.text, bg = palette.base })
set_hl(0, "WinSeparator", { fg = palette.surface0 })

-- Search
set_hl(0, "Search", { fg = palette.base, bg = palette.yellow })
set_hl(0, "IncSearch", { fg = palette.base, bg = palette.peach, bold = true })

-- Diff
set_hl(0, "DiffAdd", { fg = palette.green, reverse = true })
set_hl(0, "DiffChange", { fg = palette.blue, reverse = true })
set_hl(0, "DiffDelete", { fg = palette.red, reverse = true })
set_hl(0, "DiffText", { fg = palette.yellow, reverse = true })

-- Spelling
set_hl(0, "SpellBad", { fg = palette.red, underline = true })
set_hl(0, "SpellCap", { fg = palette.yellow, underline = true })
set_hl(0, "SpellRare", { fg = palette.green, underline = true })
set_hl(0, "SpellLocal", { fg = palette.teal, underline = true })

-- Pmenu
set_hl(0, "Pmenu", { fg = palette.text, bg = palette.base })
set_hl(0, "PmenuSel", { fg = palette.base, bg = palette.blue })
set_hl(0, "PmenuSbar", { bg = palette.surface1 })
set_hl(0, "PmenuThumb", { bg = palette.overlay0 })

-- Wild menu
set_hl(0, "WildMenu", { fg = palette.base, bg = palette.blue })

-- Notification
set_hl(0, "NormalFloat", { fg = palette.text, bg = palette.base })
set_hl(0, "FloatBorder", { fg = palette.surface2, bg = palette.base })

-- Treesitter specific highlights
set_hl(0, "@variable", { fg = palette.text })
set_hl(0, "@module", { fg = palette.yellow, italic = true })
set_hl(0, "@variable.builtin", { fg = palette.blue })
set_hl(0, "@variable.parameter", { fg = palette.text })
set_hl(0, "@variable.member", { fg = palette.text })
set_hl(0, "@constant", { fg = palette.peach })
set_hl(0, "@constant.builtin", { fg = palette.peach })
set_hl(0, "@constant.macro", { fg = palette.peach })
set_hl(0, "@string", { fg = palette.green })
set_hl(0, "@string.regex", { fg = palette.peach })
set_hl(0, "@string.escape", { fg = palette.pink })
set_hl(0, "@string.special", { fg = palette.pink })
set_hl(0, "@character", { fg = palette.green })
set_hl(0, "@number", { fg = palette.peach })
set_hl(0, "@boolean", { fg = palette.mauve })
set_hl(0, "@function", { fg = palette.blue })
set_hl(0, "@function.builtin", { fg = palette.blue })
set_hl(0, "@function.call", { fg = palette.blue })
set_hl(0, "@function.macro", { fg = palette.mauve })
set_hl(0, "@parameter", { fg = palette.text })
set_hl(0, "@keyword", { fg = palette.mauve })
set_hl(0, "@keyword.function", { fg = palette.mauve })
set_hl(0, "@keyword.operator", { fg = palette.sky })
set_hl(0, "@keyword.return", { fg = palette.mauve })
set_hl(0, "@keyword.coroutine", { fg = palette.mauve })
set_hl(0, "@keyword.debug", { fg = palette.red })
set_hl(0, "@keyword.exception", { fg = palette.mauve })
set_hl(0, "@keyword.import", { fg = palette.mauve })
set_hl(0, "@keyword.storage", { fg = palette.mauve })
set_hl(0, "@keyword.repeat", { fg = palette.mauve })
set_hl(0, "@keyword.conditional", { fg = palette.mauve })
set_hl(0, "@keyword.directive", { fg = palette.mauve })
set_hl(0, "@keyword.directive.define", { fg = palette.mauve })
set_hl(0, "@label", { fg = palette.blue })
set_hl(0, "@operator", { fg = palette.sky })
set_hl(0, "@type", { fg = palette.yellow })
set_hl(0, "@type.builtin", { fg = palette.yellow })
set_hl(0, "@type.definition", { fg = palette.yellow })
set_hl(0, "@type.qualifier", { fg = palette.mauve })
set_hl(0, "@type.argument", { fg = palette.yellow })
set_hl(0, "@attribute", { fg = palette.pink })
set_hl(0, "@property", { fg = palette.text })
set_hl(0, "@field", { fg = palette.text })
set_hl(0, "@method", { fg = palette.blue })
set_hl(0, "@method.call", { fg = palette.blue })
set_hl(0, "@constructor", { fg = palette.sapphire })
set_hl(0, "@comment", { fg = palette.overlay0, italic = true })
set_hl(0, "@punctuation.delimiter", { fg = palette.overlay2 })
set_hl(0, "@punctuation.bracket", { fg = palette.text })
set_hl(0, "@punctuation.special", { fg = palette.pink })
set_hl(0, "@markup.strong", { bold = true })
set_hl(0, "@markup.italic", { italic = true })
set_hl(0, "@markup.strikethrough", { strikethrough = true })
set_hl(0, "@markup.underline", { underline = true })
set_hl(0, "@markup.heading", { fg = palette.mauve, bold = true })
set_hl(0, "@markup.quote", { fg = palette.teal })
set_hl(0, "@markup.list", { fg = palette.mauve })
set_hl(0, "@markup.list.markdown", { fg = palette.blue })
set_hl(0, "@markup.bold", { fg = palette.mauve, bold = true })
set_hl(0, "@markup.italic", { fg = palette.pink, italic = true })
set_hl(0, "@markup.link", { fg = palette.blue, underline = true })
set_hl(0, "@markup.link.label", { fg = palette.mauve })
set_hl(0, "@markup.link.url", { fg = palette.blue, underline = true })
set_hl(0, "@markup.raw", { fg = palette.green })
set_hl(0, "@markup.raw.block", { fg = palette.text })
set_hl(0, "@diff.plus", { fg = palette.green })
set_hl(0, "@diff.minus", { fg = palette.red })
set_hl(0, "@diff.delta", { fg = palette.blue })

-- LSP Semantic Token Groups
set_hl(0, "@lsp.type.comment", {})
set_hl(0, "@lsp.type.keyword", {})
set_hl(0, "@lsp.type.namespace", {})
set_hl(0, "@lsp.type.parameter", {})
set_hl(0, "@lsp.type.property", {})
set_hl(0, "@lsp.type.variable", {})
set_hl(0, "@lsp.typemod.function.declaration", { fg = palette.blue })
set_hl(0, "@lsp.typemod.variable.defaultLibrary", { fg = palette.yellow, italic = true })
set_hl(0, "@lsp.typemod.function.defaultLibrary", { link = "@function.builtin" })
set_hl(0, "@lsp.typemod.function.builtin", { link = "@Function.builtin" })

-- LSP Diagnostics
set_hl(0, "DiagnosticError", { fg = palette.red })
set_hl(0, "DiagnosticWarn", { fg = palette.peach })
set_hl(0, "DiagnosticInfo", { fg = palette.blue })
set_hl(0, "DiagnosticHint", { fg = palette.teal })
set_hl(0, "DiagnosticOk", { fg = palette.green })
set_hl(0, "DiagnosticUnderlineError", { underline = true })
set_hl(0, "DiagnosticUnderlineWarn", { underline = true })
set_hl(0, "DiagnosticUnderlineInfo", { underline = true })
set_hl(0, "DiagnosticUnderlineHint", { underline = true })
set_hl(0, "DiagnosticUnderlineOk", { underline = true })

-- Git Signs
set_hl(0, "GitSignsAdd", { fg = palette.green })
set_hl(0, "GitSignsChange", { fg = palette.blue })
set_hl(0, "GitSignsDelete", { fg = palette.red })
