local colors = {
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


-- Editor highlights
vim.api.nvim_set_hl(0, "ColorColumn", { bg = colors.surface0 })
vim.api.nvim_set_hl(0, "Conceal", { fg = colors.overlay1 })
vim.api.nvim_set_hl(0, "Cursor", { fg = colors.base, bg = colors.rosewater })
vim.api.nvim_set_hl(0, "lCursor", { fg = colors.base, bg = colors.rosewater })
vim.api.nvim_set_hl(0, "CursorIM", { fg = colors.base, bg = colors.rosewater })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = colors.mantle })
vim.api.nvim_set_hl(0, "CursorLine", { bg = colors.surface0 })
vim.api.nvim_set_hl(0, "Directory", { fg = colors.blue })
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = colors.base })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = colors.red, bold = true, italic = true })
vim.api.nvim_set_hl(0, "VertSplit", { fg = colors.crust })
vim.api.nvim_set_hl(0, "Folded", { fg = colors.blue, bg = colors.surface1 })
vim.api.nvim_set_hl(0, "FoldColumn", { fg = colors.overlay0 })
vim.api.nvim_set_hl(0, "SignColumn", { fg = colors.surface1 })
vim.api.nvim_set_hl(0, "SignColumnSB", { bg = colors.crust, fg = colors.surface1 })
vim.api.nvim_set_hl(0, "Substitute", { bg = colors.surface1, fg = colors.pink })
vim.api.nvim_set_hl(0, "LineNr", { fg = colors.surface1 })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.lavender })
vim.api.nvim_set_hl(0, "MatchParen", { fg = colors.peach, bg = colors.surface1, bold = true })
vim.api.nvim_set_hl(0, "ModeMsg", { fg = colors.text, bold = true })
vim.api.nvim_set_hl(0, "MsgSeparator", { link = "WinSeparator" })
vim.api.nvim_set_hl(0, "MoreMsg", { fg = colors.blue })
vim.api.nvim_set_hl(0, "NonText", { fg = colors.overlay0 })
vim.api.nvim_set_hl(0, "Normal", { fg = colors.text, bg = colors.base })
vim.api.nvim_set_hl(0, "NormalNC", { fg = colors.text, bg = colors.base })
vim.api.nvim_set_hl(0, "NormalSB", { fg = colors.text, bg = colors.crust })
vim.api.nvim_set_hl(0, "NormalFloat", { fg = colors.text, bg = colors.mantle })
vim.api.nvim_set_hl(0, "FloatBorder", { fg = colors.blue, bg = colors.mantle })
vim.api.nvim_set_hl(0, "FloatTitle", { fg = colors.subtext0, bg = colors.mantle })
vim.api.nvim_set_hl(0, "FloatShadow", { fg = colors.overlay0 })
vim.api.nvim_set_hl(0, "Pmenu", { bg = colors.mantle, fg = colors.overlay2 })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = colors.surface0, bold = true })
vim.api.nvim_set_hl(0, "PmenuMatch", { fg = colors.text, bold = true })
vim.api.nvim_set_hl(0, "PmenuMatchSel", { bold = true })
vim.api.nvim_set_hl(0, "PmenuSbar", { bg = colors.surface0 })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = colors.overlay0 })
vim.api.nvim_set_hl(0, "PmenuExtra", { fg = colors.overlay0 })
vim.api.nvim_set_hl(0, "PmenuExtraSel", { bg = colors.surface0, fg = colors.overlay0, bold = true })
vim.api.nvim_set_hl(0, "ComplMatchIns", { link = "PreInsert" })
vim.api.nvim_set_hl(0, "PreInsert", { fg = colors.overlay2 })
vim.api.nvim_set_hl(0, "ComplHint", { fg = colors.subtext0 })
vim.api.nvim_set_hl(0, "ComplHintMore", { link = "Question" })
vim.api.nvim_set_hl(0, "Question", { fg = colors.blue })
vim.api.nvim_set_hl(0, "QuickFixLine", { bg = colors.surface1, bold = true })
vim.api.nvim_set_hl(0, "Search", { bg = colors.sky, fg = colors.text })
vim.api.nvim_set_hl(0, "IncSearch", { bg = colors.sky, fg = colors.mantle })
vim.api.nvim_set_hl(0, "CurSearch", { bg = colors.red, fg = colors.mantle })
vim.api.nvim_set_hl(0, "SpecialKey", { link = "NonText" })
vim.api.nvim_set_hl(0, "SpellBad", { sp = colors.red, undercurl = true })
vim.api.nvim_set_hl(0, "SpellCap", { sp = colors.yellow, undercurl = true })
vim.api.nvim_set_hl(0, "SpellLocal", { sp = colors.blue, undercurl = true })
vim.api.nvim_set_hl(0, "SpellRare", { sp = colors.green, undercurl = true })
vim.api.nvim_set_hl(0, "StatusLine", { fg = colors.text, bg = colors.mantle })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.surface1, bg = colors.mantle })
vim.api.nvim_set_hl(0, "TabLine", { bg = colors.crust, fg = colors.overlay0 })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = colors.mantle })
vim.api.nvim_set_hl(0, "TabLineSel", { link = "Normal" })
vim.api.nvim_set_hl(0, "TermCursor", { fg = colors.base, bg = colors.rosewater })
vim.api.nvim_set_hl(0, "TermCursorNC", { fg = colors.base, bg = colors.overlay2 })
vim.api.nvim_set_hl(0, "Title", { fg = colors.blue, bold = true })
vim.api.nvim_set_hl(0, "Visual", { bg = colors.surface1, bold = true })
vim.api.nvim_set_hl(0, "VisualNOS", { bg = colors.surface1, bold = true })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "Whitespace", { fg = colors.surface1 })
vim.api.nvim_set_hl(0, "WildMenu", { bg = colors.overlay0 })
vim.api.nvim_set_hl(0, "WinBar", { fg = colors.rosewater })
vim.api.nvim_set_hl(0, "WinBarNC", { link = "WinBar" })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = colors.surface0 })

-- Syntax highlights
vim.api.nvim_set_hl(0, "Comment", { fg = colors.overlay2, italic = true })
vim.api.nvim_set_hl(0, "SpecialComment", { link = "Special" })

vim.api.nvim_set_hl(0, "Constant", { fg = colors.peach })
vim.api.nvim_set_hl(0, "String", { fg = colors.green })
vim.api.nvim_set_hl(0, "Character", { fg = colors.teal })
vim.api.nvim_set_hl(0, "Number", { fg = colors.peach })
vim.api.nvim_set_hl(0, "Float", { link = "Number" })
vim.api.nvim_set_hl(0, "Boolean", { fg = colors.peach })

vim.api.nvim_set_hl(0, "Identifier", { fg = colors.flamingo })
vim.api.nvim_set_hl(0, "Function", { fg = colors.blue })

vim.api.nvim_set_hl(0, "Statement", { fg = colors.mauve })
vim.api.nvim_set_hl(0, "Conditional", { fg = colors.mauve })
vim.api.nvim_set_hl(0, "Repeat", { fg = colors.mauve })
vim.api.nvim_set_hl(0, "Label", { fg = colors.sapphire })
vim.api.nvim_set_hl(0, "Operator", { fg = colors.sky })
vim.api.nvim_set_hl(0, "Keyword", { fg = colors.mauve })
vim.api.nvim_set_hl(0, "Exception", { fg = colors.mauve })

vim.api.nvim_set_hl(0, "PreProc", { fg = colors.pink })
vim.api.nvim_set_hl(0, "Include", { fg = colors.mauve })
vim.api.nvim_set_hl(0, "Define", { link = "PreProc" })
vim.api.nvim_set_hl(0, "Macro", { fg = colors.mauve })
vim.api.nvim_set_hl(0, "PreCondit", { link = "PreProc" })

vim.api.nvim_set_hl(0, "StorageClass", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "Structure", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "Special", { fg = colors.pink })
vim.api.nvim_set_hl(0, "Type", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "Typedef", { link = "Type" })
vim.api.nvim_set_hl(0, "SpecialChar", { link = "Special" })
vim.api.nvim_set_hl(0, "Tag", { fg = colors.lavender, bold = true })
vim.api.nvim_set_hl(0, "Delimiter", { fg = colors.overlay2 })
vim.api.nvim_set_hl(0, "Debug", { link = "Special" })

vim.api.nvim_set_hl(0, "Underlined", { underline = true })
vim.api.nvim_set_hl(0, "Bold", { bold = true })
vim.api.nvim_set_hl(0, "Italic", { italic = true })

vim.api.nvim_set_hl(0, "Error", { fg = colors.red })
vim.api.nvim_set_hl(0, "Todo", { bg = colors.flamingo, fg = colors.base, bold = true })

vim.api.nvim_set_hl(0, "qfLineNr", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "qfFileName", { fg = colors.blue })

vim.api.nvim_set_hl(0, "htmlH1", { fg = colors.pink, bold = true })
vim.api.nvim_set_hl(0, "htmlH2", { fg = colors.blue, bold = true })
vim.api.nvim_set_hl(0, "mkdCodeDelimiter", { bg = colors.base, fg = colors.text })
vim.api.nvim_set_hl(0, "mkdCodeStart", { fg = colors.flamingo, bold = true })
vim.api.nvim_set_hl(0, "mkdCodeEnd", { fg = colors.flamingo, bold = true })

-- debugging
vim.api.nvim_set_hl(0, "debugPC", { bg = colors.crust })
vim.api.nvim_set_hl(0, "debugBreakpoint", { bg = colors.base, fg = colors.overlay0 })

-- illuminate
vim.api.nvim_set_hl(0, "illuminatedWord", { bg = colors.surface1 })
vim.api.nvim_set_hl(0, "illuminatedCurWord", { bg = colors.surface1 })

-- diff
vim.api.nvim_set_hl(0, "Added", { fg = colors.green })
vim.api.nvim_set_hl(0, "Changed", { fg = colors.blue })
vim.api.nvim_set_hl(0, "diffAdded", { fg = colors.green })
vim.api.nvim_set_hl(0, "diffRemoved", { fg = colors.red })
vim.api.nvim_set_hl(0, "diffChanged", { fg = colors.blue })
vim.api.nvim_set_hl(0, "diffOldFile", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "diffNewFile", { fg = colors.peach })
vim.api.nvim_set_hl(0, "diffFile", { fg = colors.blue })
vim.api.nvim_set_hl(0, "diffLine", { fg = colors.overlay0 })
vim.api.nvim_set_hl(0, "diffIndexLine", { fg = colors.teal })
vim.api.nvim_set_hl(0, "DiffAdd", { bg = colors.green })
vim.api.nvim_set_hl(0, "DiffChange", { bg = colors.blue })
vim.api.nvim_set_hl(0, "DiffDelete", { bg = colors.red })
vim.api.nvim_set_hl(0, "DiffText", { bg = colors.blue })

-- NeoVim
vim.api.nvim_set_hl(0, "healthError", { fg = colors.red })
vim.api.nvim_set_hl(0, "healthSuccess", { fg = colors.teal })
vim.api.nvim_set_hl(0, "healthWarning", { fg = colors.yellow })

-- misc
-- glyphs
vim.api.nvim_set_hl(0, "GlyphPalette1", { fg = colors.red })
vim.api.nvim_set_hl(0, "GlyphPalette2", { fg = colors.teal })
vim.api.nvim_set_hl(0, "GlyphPalette3", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "GlyphPalette4", { fg = colors.blue })
vim.api.nvim_set_hl(0, "GlyphPalette6", { fg = colors.teal })
vim.api.nvim_set_hl(0, "GlyphPalette7", { fg = colors.text })
vim.api.nvim_set_hl(0, "GlyphPalette9", { fg = colors.red })

-- rainbow
vim.api.nvim_set_hl(0, "rainbow1", { fg = colors.red })
vim.api.nvim_set_hl(0, "rainbow2", { fg = colors.peach })
vim.api.nvim_set_hl(0, "rainbow3", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "rainbow4", { fg = colors.green })
vim.api.nvim_set_hl(0, "rainbow5", { fg = colors.sapphire })
vim.api.nvim_set_hl(0, "rainbow6", { fg = colors.lavender })

-- csv
vim.api.nvim_set_hl(0, "csvCol0", { fg = colors.red })
vim.api.nvim_set_hl(0, "csvCol1", { fg = colors.peach })
vim.api.nvim_set_hl(0, "csvCol2", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "csvCol3", { fg = colors.green })
vim.api.nvim_set_hl(0, "csvCol4", { fg = colors.sky })
vim.api.nvim_set_hl(0, "csvCol5", { fg = colors.blue })
vim.api.nvim_set_hl(0, "csvCol6", { fg = colors.lavender })
vim.api.nvim_set_hl(0, "csvCol7", { fg = colors.mauve })
vim.api.nvim_set_hl(0, "csvCol8", { fg = colors.pink })

-- markdown
vim.api.nvim_set_hl(0, "markdownHeadingDelimiter", { fg = colors.peach, bold = true })
vim.api.nvim_set_hl(0, "markdownCode", { fg = colors.flamingo })
vim.api.nvim_set_hl(0, "markdownCodeBlock", { fg = colors.flamingo })
vim.api.nvim_set_hl(0, "markdownLinkText", { fg = colors.blue, underline = true })
vim.api.nvim_set_hl(0, "markdownH1", { link = "rainbow1" })
vim.api.nvim_set_hl(0, "markdownH2", { link = "rainbow2" })
vim.api.nvim_set_hl(0, "markdownH3", { link = "rainbow3" })
vim.api.nvim_set_hl(0, "markdownH4", { link = "rainbow4" })
vim.api.nvim_set_hl(0, "markdownH5", { link = "rainbow5" })
vim.api.nvim_set_hl(0, "markdownH6", { link = "rainbow6" })

-- Treesitter highlights
vim.api.nvim_set_hl(0, "@variable", { fg = colors.text })
vim.api.nvim_set_hl(0, "@variable.builtin", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@variable.parameter", { fg = colors.rosewater })
vim.api.nvim_set_hl(0, "@variable.member", { fg = colors.text })

-- ts: constants
vim.api.nvim_set_hl(0, "@constant", { fg = colors.peach })
vim.api.nvim_set_hl(0, "@constant.builtin", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@constant.macro", { fg = colors.peach })

-- ts: literals
vim.api.nvim_set_hl(0, "@string", { fg = colors.green })
vim.api.nvim_set_hl(0, "@string.documentation", { fg = colors.green })
vim.api.nvim_set_hl(0, "@string.regexp", { fg = colors.peach })
vim.api.nvim_set_hl(0, "@string.escape", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@string.special", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@character", { fg = colors.teal })
vim.api.nvim_set_hl(0, "@character.special", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@boolean", { fg = colors.mauve })
vim.api.nvim_set_hl(0, "@number", { fg = colors.peach })
vim.api.nvim_set_hl(0, "@float", { fg = colors.peach })

-- ts: types
vim.api.nvim_set_hl(0, "@type", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "@type.builtin", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "@type.definition", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "@type.qualifier", { fg = colors.mauve })

-- ts: functions
vim.api.nvim_set_hl(0, "@function", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@function.builtin", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@function.call", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@function.macro", { fg = colors.mauve })
vim.api.nvim_set_hl(0, "@function.method", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@function.method.call", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@constructor", { fg = colors.sapphire })
vim.api.nvim_set_hl(0, "@operator", { fg = colors.sky })

-- ts: keywords
vim.api.nvim_set_hl(0, "@keyword", { fg = colors.mauve })
vim.api.nvim_set_hl(0, "@keyword.coroutine", { fg = colors.peach })
vim.api.nvim_set_hl(0, "@keyword.function", { fg = colors.mauve })
vim.api.nvim_set_hl(0, "@keyword.operator", { fg = colors.mauve })
vim.api.nvim_set_hl(0, "@keyword.return", { fg = colors.mauve })
vim.api.nvim_set_hl(0, "@keyword.debug", { link = "@debug" })
vim.api.nvim_set_hl(0, "@keyword.exception", { fg = colors.mauve })
vim.api.nvim_set_hl(0, "@keyword.import", { fg = colors.mauve })
vim.api.nvim_set_hl(0, "@keyword.storage", { fg = colors.mauve })
vim.api.nvim_set_hl(0, "@keyword.repeat", { fg = colors.mauve })
vim.api.nvim_set_hl(0, "@keyword.conditional", { fg = colors.mauve })
vim.api.nvim_set_hl(0, "@keyword.directive", { fg = colors.pink })
vim.api.nvim_set_hl(0, "@keyword.directive.define", { link = "@define" })

-- ts: identifiers
vim.api.nvim_set_hl(0, "@parameter", { fg = colors.rosewater })
vim.api.nvim_set_hl(0, "@property", { fg = colors.text })
vim.api.nvim_set_hl(0, "@field", { fg = colors.text })
vim.api.nvim_set_hl(0, "@method", { link = "@function.method" })
vim.api.nvim_set_hl(0, "@method.call", { link = "@function.method.call" })
vim.api.nvim_set_hl(0, "@namespace", { fg = colors.yellow, italic = true })

-- ts: punctuation
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = colors.sky })
vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = colors.text })
vim.api.nvim_set_hl(0, "@punctuation.special", { fg = colors.pink })

-- ts: labels
vim.api.nvim_set_hl(0, "@label", { fg = colors.blue })

-- ts: comments
vim.api.nvim_set_hl(0, "@comment", { fg = colors.overlay0, italic = true })
vim.api.nvim_set_hl(0, "@comment.documentation", { fg = colors.lavender })
vim.api.nvim_set_hl(0, "@comment.error", { fg = colors.red, bold = true, italic = true })
vim.api.nvim_set_hl(0, "@comment.warning", { fg = colors.peach, bold = true, italic = true })
vim.api.nvim_set_hl(0, "@comment.todo", { fg = colors.blue, bold = true, italic = true })
vim.api.nvim_set_hl(0, "@comment.note", { fg = colors.blue, bold = true, italic = true })
vim.api.nvim_set_hl(0, "@comment.fixme", { fg = colors.red, bold = true, italic = true })
vim.api.nvim_set_hl(0, "@comment.hack", { fg = colors.peach, bold = true, italic = true })
vim.api.nvim_set_hl(0, "@comment.perf", { fg = colors.lavender, bold = true, italic = true })
vim.api.nvim_set_hl(0, "@comment.sec", { fg = colors.peach, bold = true, italic = true })

-- ts: markup
vim.api.nvim_set_hl(0, "@markup", { fg = colors.text })
vim.api.nvim_set_hl(0, "@markup.strong", { fg = colors.peach, bold = true })
vim.api.nvim_set_hl(0, "@markup.emphasis", { fg = colors.peach, italic = true })
vim.api.nvim_set_hl(0, "@markup.strikethrough", { fg = colors.text, strikethrough = true })
vim.api.nvim_set_hl(0, "@markup.underline", { fg = colors.text, underline = true })
vim.api.nvim_set_hl(0, "@markup.heading", { fg = colors.blue, bold = true })
vim.api.nvim_set_hl(0, "@markup.heading.1", { link = "@markup.heading" })
vim.api.nvim_set_hl(0, "@markup.heading.2", { link = "@markup.heading" })
vim.api.nvim_set_hl(0, "@markup.heading.3", { link = "@markup.heading" })
vim.api.nvim_set_hl(0, "@markup.heading.4", { link = "@markup.heading" })
vim.api.nvim_set_hl(0, "@markup.heading.5", { link = "@markup.heading" })
vim.api.nvim_set_hl(0, "@markup.heading.6", { link = "@markup.heading" })
vim.api.nvim_set_hl(0, "@markup.list", { fg = colors.mauve })
vim.api.nvim_set_hl(0, "@markup.list.checked", { fg = colors.green })
vim.api.nvim_set_hl(0, "@markup.list.unchecked", { fg = colors.red })
vim.api.nvim_set_hl(0, "@markup.quote", { fg = colors.teal })
vim.api.nvim_set_hl(0, "@markup.math", { fg = colors.flamingo })
vim.api.nvim_set_hl(0, "@markup.environment", { fg = colors.flamingo })
vim.api.nvim_set_hl(0, "@markup.link", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@markup.link.label", { fg = colors.rosewater })
vim.api.nvim_set_hl(0, "@markup.link.url", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@markup.raw", { fg = colors.green })
vim.api.nvim_set_hl(0, "@markup.raw.block", { fg = colors.subtext0 })
vim.api.nvim_set_hl(0, "@markup.link.marker", { fg = colors.mauve })

-- ts: semantic
vim.api.nvim_set_hl(0, "@module", { fg = colors.yellow, italic = true })
vim.api.nvim_set_hl(0, "@attribute", { fg = colors.pink })
vim.api.nvim_set_hl(0, "@conceal", { fg = colors.overlay0 })
vim.api.nvim_set_hl(0, "@debug", { fg = colors.red })
vim.api.nvim_set_hl(0, "@error", { fg = colors.red })
vim.api.nvim_set_hl(0, "@exception", { fg = colors.red })
vim.api.nvim_set_hl(0, "@tag", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = colors.overlay0 })
vim.api.nvim_set_hl(0, "@tag.attribute", { fg = colors.mauve })

-- ts: diff
vim.api.nvim_set_hl(0, "@diff.plus", { fg = colors.green })
vim.api.nvim_set_hl(0, "@diff.minus", { fg = colors.red })
vim.api.nvim_set_hl(0, "@diff.delta", { fg = colors.blue })

-- legacy
-- ts: general
vim.api.nvim_set_hl(0, "TSVariable", { link = "@variable" })
vim.api.nvim_set_hl(0, "TSVariableBuiltin", { link = "@variable.builtin" })
vim.api.nvim_set_hl(0, "TSParameter", { link = "@parameter" })
vim.api.nvim_set_hl(0, "TSConstBuiltin", { link = "@constant.builtin" })
vim.api.nvim_set_hl(0, "TSConstMacro", { link = "@constant.macro" })
vim.api.nvim_set_hl(0, "TSModule", { link = "@module" })

-- ts: literals
vim.api.nvim_set_hl(0, "TSString", { link = "@string" })
vim.api.nvim_set_hl(0, "TSStringRegex", { link = "@string.regexp" })
vim.api.nvim_set_hl(0, "TSStringEscape", { link = "@string.escape" })
vim.api.nvim_set_hl(0, "TSStringSpecial", { link = "@string.special" })
vim.api.nvim_set_hl(0, "TSCharacter", { link = "@character" })
vim.api.nvim_set_hl(0, "TSCharacterSpecial", { link = "@character.special" })
vim.api.nvim_set_hl(0, "TSBoolean", { link = "@boolean" })
vim.api.nvim_set_hl(0, "TSNumber", { link = "@number" })
vim.api.nvim_set_hl(0, "TSFloat", { link = "@float" })

-- ts: types
vim.api.nvim_set_hl(0, "TSType", { link = "@type" })
vim.api.nvim_set_hl(0, "TSTypeBuiltin", { link = "@type.builtin" })
vim.api.nvim_set_hl(0, "TSTypeDefinition", { link = "@type.definition" })
vim.api.nvim_set_hl(0, "TSTypeQualifier", { link = "@type.qualifier" })

-- ts: functions
vim.api.nvim_set_hl(0, "TSFunction", { link = "@function" })
vim.api.nvim_set_hl(0, "TSFunctionBuiltin", { link = "@function.builtin" })
vim.api.nvim_set_hl(0, "TSFunctionCall", { link = "@function.call" })
vim.api.nvim_set_hl(0, "TSMethod", { link = "@function.method" })
vim.api.nvim_set_hl(0, "TSMethodCall", { link = "@function.method.call" })
vim.api.nvim_set_hl(0, "TSFuncMacro", { link = "@function.macro" })
vim.api.nvim_set_hl(0, "TSConstructor", { link = "@constructor" })
vim.api.nvim_set_hl(0, "TSOperator", { link = "@operator" })

-- ts: keywords
vim.api.nvim_set_hl(0, "TSKeyword", { link = "@keyword" })
vim.api.nvim_set_hl(0, "TSKeywordFunction", { link = "@keyword.function" })
vim.api.nvim_set_hl(0, "TSKeywordOperator", { link = "@keyword.operator" })
vim.api.nvim_set_hl(0, "TSKeywordReturn", { link = "@keyword.return" })
vim.api.nvim_set_hl(0, "TSKeywordCoroutines", { link = "@keyword.coroutine" })
vim.api.nvim_set_hl(0, "TSKeywordException", { link = "@keyword.exception" })
vim.api.nvim_set_hl(0, "TSKeywordImport", { link = "@keyword.import" })
vim.api.nvim_set_hl(0, "TSKeywordStorage", { link = "@keyword.storage" })
vim.api.nvim_set_hl(0, "TSKeywordRepeat", { link = "@keyword.repeat" })
vim.api.nvim_set_hl(0, "TSKeywordConditional", { link = "@keyword.conditional" })
vim.api.nvim_set_hl(0, "TSKeywordDirective", { link = "@keyword.directive" })
vim.api.nvim_set_hl(0, "TSDefine", { link = "@keyword.directive.define" })

-- ts: identifiers
vim.api.nvim_set_hl(0, "TSProperty", { link = "@property" })
vim.api.nvim_set_hl(0, "TSField", { link = "@field" })
vim.api.nvim_set_hl(0, "TSParameterReference", { link = "@parameter" })
vim.api.nvim_set_hl(0, "TSNamespace", { link = "@namespace" })

-- ts: punctuation
vim.api.nvim_set_hl(0, "TSPunctDelimiter", { link = "@punctuation.delimiter" })
vim.api.nvim_set_hl(0, "TSPunctBracket", { link = "@punctuation.bracket" })
vim.api.nvim_set_hl(0, "TSPunctSpecial", { link = "@punctuation.special" })

-- ts: labels
vim.api.nvim_set_hl(0, "TSLabel", { link = "@label" })

-- ts: comments
vim.api.nvim_set_hl(0, "TSComment", { link = "@comment" })

-- ts: markup
vim.api.nvim_set_hl(0, "TSStrong", { link = "@markup.strong" })
vim.api.nvim_set_hl(0, "TSEmphasis", { link = "@markup.emphasis" })
vim.api.nvim_set_hl(0, "TSUnderline", { link = "@markup.underline" })
vim.api.nvim_set_hl(0, "TSStrike", { link = "@markup.strikethrough" })
vim.api.nvim_set_hl(0, "TSTitle", { link = "@markup.heading" })
vim.api.nvim_set_hl(0, "TSHeading", { link = "@markup.heading" })
vim.api.nvim_set_hl(0, "TSTextReference", { link = "@markup.link" })
vim.api.nvim_set_hl(0, "TSSuperscript", { link = "@markup.math" })
vim.api.nvim_set_hl(0, "TSMath", { link = "@markup.math" })
vim.api.nvim_set_hl(0, "TSEnvironment", { link = "@markup.environment" })
vim.api.nvim_set_hl(0, "TSEnvironmentName", { link = "@markup.math" })
vim.api.nvim_set_hl(0, "TSStringRegex", { link = "@string.regexp" })
vim.api.nvim_set_hl(0, "TSStringEscape", { link = "@string.escape" })
vim.api.nvim_set_hl(0, "TSNote", { link = "@comment.note" })
vim.api.nvim_set_hl(0, "TSWarning", { link = "@comment.warning" })
vim.api.nvim_set_hl(0, "TSDanger", { link = "@comment.error" })
vim.api.nvim_set_hl(0, "TSTodo", { link = "@comment.todo" })

-- ts: semantic
vim.api.nvim_set_hl(0, "TSTag", { link = "@tag" })
vim.api.nvim_set_hl(0, "TSTagDelimiter", { link = "@tag.delimiter" })
vim.api.nvim_set_hl(0, "TSAttribute", { link = "@attribute" })
vim.api.nvim_set_hl(0, "TSException", { link = "@exception" })
vim.api.nvim_set_hl(0, "TSDebug", { link = "@debug" })
vim.api.nvim_set_hl(0, "TSError", { link = "@error" })

-- ts: diff
vim.api.nvim_set_hl(0, "TSDiffAdd", { link = "@diff.plus" })
vim.api.nvim_set_hl(0, "TSDiffDelete", { link = "@diff.minus" })

-- CSS
vim.api.nvim_set_hl(0, "@property.css", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@constant.css", { fg = colors.peach })
vim.api.nvim_set_hl(0, "@string.css", { fg = colors.green })
vim.api.nvim_set_hl(0, "@tag.css", { fg = colors.mauve })

-- SASS
vim.api.nvim_set_hl(0, "@property.sass", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@string.scss", { fg = colors.green })

-- HTML
vim.api.nvim_set_hl(0, "@tag.html", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@tag.attribute.html", { fg = colors.mauve })
vim.api.nvim_set_hl(0, "@tag.delimiter.html", { fg = colors.overlay0 })

-- Markdown
vim.api.nvim_set_hl(0, "@markup.heading.1.markdown", { link = "@markup.heading" })
vim.api.nvim_set_hl(0, "@markup.heading.2.markdown", { link = "@markup.heading" })
vim.api.nvim_set_hl(0, "@markup.heading.3.markdown", { link = "@markup.heading" })
vim.api.nvim_set_hl(0, "@markup.heading.4.markdown", { link = "@markup.heading" })
vim.api.nvim_set_hl(0, "@markup.heading.5.markdown", { link = "@markup.heading" })
vim.api.nvim_set_hl(0, "@markup.heading.6.markdown", { link = "@markup.heading" })
vim.api.nvim_set_hl(0, "@markup.strong.markdown", { link = "@markup.strong" })
vim.api.nvim_set_hl(0, "@markup.emphasis.markdown", { link = "@markup.emphasis" })
vim.api.nvim_set_hl(0, "@markup.underline.markdown", { link = "@markup.underline" })
vim.api.nvim_set_hl(0, "@markup.strikethrough.markdown", { link = "@markup.strikethrough" })
vim.api.nvim_set_hl(0, "@markup.list.markdown", { link = "@markup.list" })
vim.api.nvim_set_hl(0, "@markup.list.checked.markdown", { link = "@markup.list.checked" })
vim.api.nvim_set_hl(0, "@markup.list.unchecked.markdown", { link = "@markup.list.unchecked" })
vim.api.nvim_set_hl(0, "@markup.quote.markdown", { link = "@markup.quote" })
vim.api.nvim_set_hl(0, "@markup.math.markdown", { link = "@markup.math" })
vim.api.nvim_set_hl(0, "@markup.link.markdown", { link = "@markup.link" })
vim.api.nvim_set_hl(0, "@markup.raw.markdown", { link = "@markup.raw" })
vim.api.nvim_set_hl(0, "@markup.link.label.markdown", { link = "@markup.link.label" })
vim.api.nvim_set_hl(0, "@markup.link.url.markdown", { link = "@markup.link.url" })
vim.api.nvim_set_hl(0, "@markup.link.marker.markdown", { link = "@markup.link.marker" })

-- PHP
vim.api.nvim_set_hl(0, "@constructor.php", { fg = colors.blue })

-- JavaScript
vim.api.nvim_set_hl(0, "@tag.javascript", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@constructor.javascript", { fg = colors.blue })

-- TypeScript
vim.api.nvim_set_hl(0, "@constructor.typescript", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@tag.typescript", { fg = colors.blue })

-- Ruby
vim.api.nvim_set_hl(0, "@constant.ruby", { fg = colors.peach })
vim.api.nvim_set_hl(0, "@attribute.ruby", { fg = colors.text })

-- C/C++
vim.api.nvim_set_hl(0, "@property.c", { fg = colors.text })
vim.api.nvim_set_hl(0, "@property.cpp", { fg = colors.text })

-- Python
vim.api.nvim_set_hl(0, "@property.python", { fg = colors.text })
vim.api.nvim_set_hl(0, "@constructor.python", { fg = colors.blue })

-- Lua
vim.api.nvim_set_hl(0, "@property.lua", { fg = colors.text })

-- Java
vim.api.nvim_set_hl(0, "@property.java", { fg = colors.text })
vim.api.nvim_set_hl(0, "@constructor.java", { fg = colors.blue })

-- C#
vim.api.nvim_set_hl(0, "@property.cs", { fg = colors.text })
vim.api.nvim_set_hl(0, "@constructor.cs", { fg = colors.blue })

-- Rust
vim.api.nvim_set_hl(0, "@property.rust", { fg = colors.text })
vim.api.nvim_set_hl(0, "@namespace.rust", { fg = colors.yellow })

-- Haskell
vim.api.nvim_set_hl(0, "@type.haskell", { fg = colors.yellow })

-- OCaml
vim.api.nvim_set_hl(0, "@type.ocaml", { fg = colors.yellow })

-- JSON
vim.api.nvim_set_hl(0, "@label.json", { fg = colors.text })

-- YAML
vim.api.nvim_set_hl(0, "@string.yaml", { fg = colors.green })

-- TOML
vim.api.nvim_set_hl(0, "@label.toml", { fg = colors.text })

-- Ini
vim.api.nvim_set_hl(0, "@label.ini", { fg = colors.text })

-- XML
vim.api.nvim_set_hl(0, "@tag.xml", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@tag.attribute.xml", { fg = colors.mauve })
vim.api.nvim_set_hl(0, "@tag.delimiter.xml", { fg = colors.overlay0 })

-- Vim
vim.api.nvim_set_hl(0, "@variable.vim", { fg = colors.text })
vim.api.nvim_set_hl(0, "@property.vim", { fg = colors.text })

-- Query
vim.api.nvim_set_hl(0, "@tag.query", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@label.query", { fg = colors.text })

-- Git
vim.api.nvim_set_hl(0, "@text.gitcommit", { fg = colors.text })
vim.api.nvim_set_hl(0, "@text.title.gitcommit", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@text.subject.gitcommit", { fg = colors.text })
vim.api.nvim_set_hl(0, "@text.startofline.gitcommit", { fg = colors.overlay0 })
vim.api.nvim_set_hl(0, "@text.endofline.gitcommit", { fg = colors.overlay0 })
vim.api.nvim_set_hl(0, "@string.gitcommit", { fg = colors.green })
vim.api.nvim_set_hl(0, "@tag.gitcommit", { fg = colors.text })

-- Shell
vim.api.nvim_set_hl(0, "@parameter.bash", { fg = colors.text })

-- Lua
vim.api.nvim_set_hl(0, "@parameter.lua", { fg = colors.text })

-- Go
vim.api.nvim_set_hl(0, "@parameter.go", { fg = colors.text })
vim.api.nvim_set_hl(0, "@type.go", { fg = colors.yellow })

-- Make
vim.api.nvim_set_hl(0, "@parameter.make", { fg = colors.text })

-- Bibtex
vim.api.nvim_set_hl(0, "@label.bibtex", { fg = colors.text })

-- Lua
vim.api.nvim_set_hl(0, "@type.lua", { fg = colors.yellow })

-- LSP and diagnostics highlights
vim.api.nvim_set_hl(0, "LspReferenceText", { bg = colors.surface1 })
vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = colors.surface1 })
vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = colors.surface1 })

-- Diagnostic virtual text
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = colors.red, bg = colors.base })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = colors.yellow, bg = colors.base })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = colors.sky, bg = colors.base })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = colors.teal, bg = colors.base })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextOk", { fg = colors.green, bg = colors.base })

-- Diagnostic default highlights
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = colors.red })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = colors.sky })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = colors.teal })
vim.api.nvim_set_hl(0, "DiagnosticOk", { fg = colors.green })

-- Diagnostic underlines
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { underline = true, sp = colors.red })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { underline = true, sp = colors.yellow })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { underline = true, sp = colors.sky })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { underline = true, sp = colors.teal })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineOk", { underline = true, sp = colors.green })

-- Diagnostic floating highlights
vim.api.nvim_set_hl(0, "DiagnosticFloatingError", { fg = colors.red })
vim.api.nvim_set_hl(0, "DiagnosticFloatingWarn", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "DiagnosticFloatingInfo", { fg = colors.sky })
vim.api.nvim_set_hl(0, "DiagnosticFloatingHint", { fg = colors.teal })
vim.api.nvim_set_hl(0, "DiagnosticFloatingOk", { fg = colors.green })

-- Diagnostic sign highlights
vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = colors.red })
vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = colors.sky })
vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = colors.teal })
vim.api.nvim_set_hl(0, "DiagnosticSignOk", { fg = colors.green })

-- LSP diagnostics legacy highlights
vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultError", { fg = colors.red })
vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultWarning", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultInformation", { fg = colors.sky })
vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultHint", { fg = colors.teal })

vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", { bg = colors.surface0, bold = true })

vim.api.nvim_set_hl(0, "LspDiagnosticsError", { fg = colors.red })
vim.api.nvim_set_hl(0, "LspDiagnosticsWarning", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "LspDiagnosticsInformation", { fg = colors.sky })
vim.api.nvim_set_hl(0, "LspDiagnosticsHint", { fg = colors.teal })

vim.api.nvim_set_hl(0, "LspDiagnosticsVirtualTextError", { fg = colors.red })
vim.api.nvim_set_hl(0, "LspDiagnosticsVirtualTextWarning", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "LspDiagnosticsVirtualTextInformation", { fg = colors.sky })
vim.api.nvim_set_hl(0, "LspDiagnosticsVirtualTextHint", { fg = colors.teal })

vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineError", { underline = true, sp = colors.red })
vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineWarning", { underline = true, sp = colors.yellow })
vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineInformation", { underline = true, sp = colors.sky })
vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineHint", { underline = true, sp = colors.teal })

vim.api.nvim_set_hl(0, "LspCodeLens", { fg = colors.overlay0 })
vim.api.nvim_set_hl(0, "LspCodeLensSeparator", { link = "LspCodeLens" })

vim.api.nvim_set_hl(0, "LspInlayHint", { fg = colors.overlay0, bg = colors.base })

vim.api.nvim_set_hl(0, "LspInfoBorder", { link = "FloatBorder" })

-- Semantic token highlights
vim.api.nvim_set_hl(0, "@lsp.type.enumMember", { fg = colors.teal })
vim.api.nvim_set_hl(0, "@lsp.type.variable", {})
vim.api.nvim_set_hl(0, "@lsp.typemod.function.defaultLibrary", { link = "@function.builtin" })
vim.api.nvim_set_hl(0, "@lsp.typemod.function.builtin", { link = "@function.builtin" })

-- Git signs
vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = colors.green })
vim.api.nvim_set_hl(0, "GitSignsChange", { fg = colors.blue })
vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = colors.red })
