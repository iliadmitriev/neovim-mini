local colors = {
  -- Base colors (using OneDark deep theme)
  black = "#0c0e15",
  bg0 = "#1a212e",  -- Main background
  bg1 = "#21283b",  -- Darker background
  bg2 = "#283347",  -- Selection background
  bg3 = "#2a324a",  -- Secondary selection background
  bg_d = "#141b24", -- Darker background alternative
  bg_blue = "#54b0fd",
  bg_yellow = "#f2cc81",
  fg = "#93a4c3", -- Main foreground

  -- Semantic colors
  purple = "#c75ae8",
  green = "#8bcd5b",
  orange = "#dd9046",
  blue = "#41a7fc",
  yellow = "#efbd5d",
  cyan = "#34bfd0",
  red = "#f65866",
  grey = "#455574", -- Matches OneDark deep grey
  light_grey = "#6c7d9c",

  -- Special colors
  dark_cyan = "#1b6a73",
  dark_red = "#992525",
  dark_yellow = "#8f610d",
  dark_purple = "#862aa1",

  -- Diff colors
  diff_add = "#27341c",
  diff_delete = "#331c1e",
  diff_change = "#102b40",
  diff_text = "#1c4a6e",
}

-- Editor highlights
vim.api.nvim_set_hl(0, "ColorColumn", { bg = colors.bg1 })
vim.api.nvim_set_hl(0, "Conceal", { fg = colors.grey })
vim.api.nvim_set_hl(0, "Cursor", { reverse = true }) -- Using reverse as OneDark does
vim.api.nvim_set_hl(0, "lCursor", { reverse = true })
vim.api.nvim_set_hl(0, "CursorIM", { reverse = true })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = colors.bg1 })
vim.api.nvim_set_hl(0, "CursorLine", { bg = colors.bg1 })
vim.api.nvim_set_hl(0, "Directory", { fg = colors.blue })
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = colors.grey })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = colors.red, bold = true })
vim.api.nvim_set_hl(0, "VertSplit", { fg = colors.bg3 })
vim.api.nvim_set_hl(0, "Folded", { fg = colors.fg, bg = colors.bg1 })
vim.api.nvim_set_hl(0, "FoldColumn", { fg = colors.fg })
vim.api.nvim_set_hl(0, "SignColumn", { fg = colors.fg, bg = colors.bg0 })
vim.api.nvim_set_hl(0, "SignColumnSB", { bg = colors.bg_d, fg = colors.bg1 })
vim.api.nvim_set_hl(0, "Substitute", { bg = colors.green, fg = colors.bg0 })
vim.api.nvim_set_hl(0, "LineNr", { fg = colors.grey })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.fg })
vim.api.nvim_set_hl(0, "MatchParen", { bg = colors.bg3 })
vim.api.nvim_set_hl(0, "ModeMsg", { fg = colors.fg, bold = true })
vim.api.nvim_set_hl(0, "MsgSeparator", { link = "WinSeparator" })
vim.api.nvim_set_hl(0, "MoreMsg", { fg = colors.blue, bold = true })
vim.api.nvim_set_hl(0, "NonText", { fg = colors.grey })
vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = colors.bg0 })
vim.api.nvim_set_hl(0, "NormalNC", { fg = colors.fg, bg = colors.bg0 })
vim.api.nvim_set_hl(0, "NormalSB", { fg = colors.fg, bg = colors.bg_d })
vim.api.nvim_set_hl(0, "NormalFloat", { fg = colors.fg, bg = colors.bg1 })
vim.api.nvim_set_hl(0, "FloatBorder", { fg = colors.grey, bg = colors.bg1 })
vim.api.nvim_set_hl(0, "FloatTitle", { fg = colors.fg, bg = colors.bg1 })
vim.api.nvim_set_hl(0, "FloatShadow", { fg = colors.grey })
vim.api.nvim_set_hl(0, "Pmenu", { bg = colors.bg1, fg = colors.fg })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = colors.bg_blue, fg = colors.bg0 })
vim.api.nvim_set_hl(0, "PmenuMatch", { fg = colors.fg, bold = true })
vim.api.nvim_set_hl(0, "PmenuMatchSel", { bold = true })
vim.api.nvim_set_hl(0, "PmenuSbar", { bg = colors.bg1 })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = colors.grey })
vim.api.nvim_set_hl(0, "PmenuExtra", { fg = colors.grey })
vim.api.nvim_set_hl(0, "PmenuExtraSel", { bg = colors.bg1, fg = colors.grey, bold = true })
vim.api.nvim_set_hl(0, "ComplMatchIns", { link = "PreInsert" })
vim.api.nvim_set_hl(0, "PreInsert", { fg = colors.light_grey })
vim.api.nvim_set_hl(0, "ComplHint", { fg = colors.light_grey })
vim.api.nvim_set_hl(0, "ComplHintMore", { link = "Question" })
vim.api.nvim_set_hl(0, "Question", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "QuickFixLine", { fg = colors.blue, underline = true })
vim.api.nvim_set_hl(0, "Search", { bg = colors.bg_yellow, fg = colors.bg0 })
vim.api.nvim_set_hl(0, "IncSearch", { bg = colors.orange, fg = colors.bg0 })
vim.api.nvim_set_hl(0, "CurSearch", { bg = colors.orange, fg = colors.bg0 })
vim.api.nvim_set_hl(0, "SpecialKey", { link = "NonText" })
vim.api.nvim_set_hl(0, "SpellBad", { sp = colors.red, undercurl = true })
vim.api.nvim_set_hl(0, "SpellCap", { sp = colors.yellow, undercurl = true })
vim.api.nvim_set_hl(0, "SpellLocal", { sp = colors.blue, undercurl = true })
vim.api.nvim_set_hl(0, "SpellRare", { sp = colors.purple, undercurl = true })
vim.api.nvim_set_hl(0, "StatusLine", { fg = colors.fg, bg = colors.bg2 })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.grey, bg = colors.bg1 })
vim.api.nvim_set_hl(0, "TabLine", { fg = colors.fg, bg = colors.bg1 })
vim.api.nvim_set_hl(0, "TabLineFill", { fg = colors.grey, bg = colors.bg1 })
vim.api.nvim_set_hl(0, "TabLineSel", { fg = colors.bg0, bg = colors.fg })
vim.api.nvim_set_hl(0, "TermCursor", { reverse = true })
vim.api.nvim_set_hl(0, "TermCursorNC", { reverse = true })
vim.api.nvim_set_hl(0, "Title", { fg = colors.cyan, bold = true })
vim.api.nvim_set_hl(0, "Visual", { bg = colors.bg3 })
vim.api.nvim_set_hl(0, "VisualNOS", { bg = colors.bg2, underline = true })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = colors.yellow, bold = true })
vim.api.nvim_set_hl(0, "Whitespace", { fg = colors.grey })
vim.api.nvim_set_hl(0, "WildMenu", { bg = colors.blue, fg = colors.bg0 })
vim.api.nvim_set_hl(0, "WinBar", { fg = colors.fg, bg = colors.bg0 })
vim.api.nvim_set_hl(0, "WinBarNC", { fg = colors.grey, bg = colors.bg0 })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = colors.bg3 })

-- Syntax highlights
vim.api.nvim_set_hl(0, "Comment", { fg = colors.grey })
vim.api.nvim_set_hl(0, "SpecialComment", { fg = colors.grey })

vim.api.nvim_set_hl(0, "Constant", { fg = colors.orange })
vim.api.nvim_set_hl(0, "String", { fg = colors.green })
vim.api.nvim_set_hl(0, "Character", { fg = colors.orange })
vim.api.nvim_set_hl(0, "Number", { fg = colors.orange })
vim.api.nvim_set_hl(0, "Float", { fg = colors.orange })
vim.api.nvim_set_hl(0, "Boolean", { fg = colors.orange })

vim.api.nvim_set_hl(0, "Identifier", { fg = colors.red })
vim.api.nvim_set_hl(0, "Function", { fg = colors.blue })

vim.api.nvim_set_hl(0, "Statement", { fg = colors.purple })
vim.api.nvim_set_hl(0, "Conditional", { fg = colors.purple })
vim.api.nvim_set_hl(0, "Repeat", { fg = colors.purple })
vim.api.nvim_set_hl(0, "Label", { fg = colors.purple })
vim.api.nvim_set_hl(0, "Operator", { fg = colors.fg })
vim.api.nvim_set_hl(0, "Keyword", { fg = colors.purple })
vim.api.nvim_set_hl(0, "Exception", { fg = colors.purple })

vim.api.nvim_set_hl(0, "PreProc", { fg = colors.purple })
vim.api.nvim_set_hl(0, "Include", { fg = colors.purple })
vim.api.nvim_set_hl(0, "Define", { fg = colors.purple })
vim.api.nvim_set_hl(0, "Macro", { fg = colors.red })
vim.api.nvim_set_hl(0, "PreCondit", { fg = colors.purple })

vim.api.nvim_set_hl(0, "StorageClass", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "Structure", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "Special", { fg = colors.red })
vim.api.nvim_set_hl(0, "Type", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "Typedef", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "SpecialChar", { fg = colors.red })
vim.api.nvim_set_hl(0, "Tag", { fg = colors.green })
vim.api.nvim_set_hl(0, "Delimiter", { fg = colors.light_grey })
vim.api.nvim_set_hl(0, "Debug", { fg = colors.red })

vim.api.nvim_set_hl(0, "Underlined", { underline = true })
vim.api.nvim_set_hl(0, "Bold", { bold = true })
vim.api.nvim_set_hl(0, "Italic", { italic = true })

vim.api.nvim_set_hl(0, "Error", { fg = colors.red })
vim.api.nvim_set_hl(0, "Todo", { fg = colors.red })

vim.api.nvim_set_hl(0, "qfLineNr", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "qfFileName", { fg = colors.blue })

vim.api.nvim_set_hl(0, "htmlH1", { fg = colors.red, bold = true })
vim.api.nvim_set_hl(0, "htmlH2", { fg = colors.purple, bold = true })
vim.api.nvim_set_hl(0, "mkdCodeDelimiter", { bg = colors.bg0, fg = colors.fg })
vim.api.nvim_set_hl(0, "mkdCodeStart", { fg = colors.red, bold = true })
vim.api.nvim_set_hl(0, "mkdCodeEnd", { fg = colors.red, bold = true })

-- debugging
vim.api.nvim_set_hl(0, "debugPC", { bg = colors.green, fg = colors.bg0 })
vim.api.nvim_set_hl(0, "debugBreakpoint", { bg = colors.red, fg = colors.bg0 })

-- illuminate
vim.api.nvim_set_hl(0, "illuminatedWord", { bg = colors.bg2 })
vim.api.nvim_set_hl(0, "illuminatedCurWord", { bg = colors.bg2 })

-- diff
vim.api.nvim_set_hl(0, "Added", { fg = colors.green })
vim.api.nvim_set_hl(0, "Changed", { fg = colors.blue })
vim.api.nvim_set_hl(0, "diffAdded", { fg = colors.green })
vim.api.nvim_set_hl(0, "diffRemoved", { fg = colors.red })
vim.api.nvim_set_hl(0, "diffChanged", { fg = colors.blue })
vim.api.nvim_set_hl(0, "diffOldFile", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "diffNewFile", { fg = colors.orange })
vim.api.nvim_set_hl(0, "diffFile", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "diffLine", { fg = colors.grey })
vim.api.nvim_set_hl(0, "diffIndexLine", { fg = colors.grey })
vim.api.nvim_set_hl(0, "DiffAdd", { bg = colors.diff_add })
vim.api.nvim_set_hl(0, "DiffChange", { bg = colors.diff_change })
vim.api.nvim_set_hl(0, "DiffDelete", { bg = colors.diff_delete })
vim.api.nvim_set_hl(0, "DiffText", { bg = colors.diff_text })

-- NeoVim
vim.api.nvim_set_hl(0, "healthError", { fg = colors.red })
vim.api.nvim_set_hl(0, "healthSuccess", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "healthWarning", { fg = colors.yellow })

-- misc
-- glyphs
vim.api.nvim_set_hl(0, "GlyphPalette1", { fg = colors.red })
vim.api.nvim_set_hl(0, "GlyphPalette2", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "GlyphPalette3", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "GlyphPalette4", { fg = colors.blue })
vim.api.nvim_set_hl(0, "GlyphPalette6", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "GlyphPalette7", { fg = colors.fg })
vim.api.nvim_set_hl(0, "GlyphPalette9", { fg = colors.red })

-- rainbow
vim.api.nvim_set_hl(0, "rainbow1", { fg = colors.red })
vim.api.nvim_set_hl(0, "rainbow2", { fg = colors.orange })
vim.api.nvim_set_hl(0, "rainbow3", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "rainbow4", { fg = colors.green })
vim.api.nvim_set_hl(0, "rainbow5", { fg = colors.blue })
vim.api.nvim_set_hl(0, "rainbow6", { fg = colors.purple })

-- csv
vim.api.nvim_set_hl(0, "csvCol0", { fg = colors.red })
vim.api.nvim_set_hl(0, "csvCol1", { fg = colors.orange })
vim.api.nvim_set_hl(0, "csvCol2", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "csvCol3", { fg = colors.green })
vim.api.nvim_set_hl(0, "csvCol4", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "csvCol5", { fg = colors.blue })
vim.api.nvim_set_hl(0, "csvCol6", { fg = colors.purple })
vim.api.nvim_set_hl(0, "csvCol7", { fg = colors.purple })
vim.api.nvim_set_hl(0, "csvCol8", { fg = colors.purple })

-- markdown
vim.api.nvim_set_hl(0, "markdownHeadingDelimiter", { fg = colors.grey, bold = true })
vim.api.nvim_set_hl(0, "markdownCode", { fg = colors.red })
vim.api.nvim_set_hl(0, "markdownCodeBlock", { fg = colors.red })
vim.api.nvim_set_hl(0, "markdownLinkText", { fg = colors.red, underline = true })
vim.api.nvim_set_hl(0, "markdownH1", { link = "rainbow1" })
vim.api.nvim_set_hl(0, "markdownH2", { link = "rainbow2" })
vim.api.nvim_set_hl(0, "markdownH3", { link = "rainbow3" })
vim.api.nvim_set_hl(0, "markdownH4", { link = "rainbow4" })
vim.api.nvim_set_hl(0, "markdownH5", { link = "rainbow5" })
vim.api.nvim_set_hl(0, "markdownH6", { link = "rainbow6" })

-- Treesitter highlights
vim.api.nvim_set_hl(0, "@variable", { fg = colors.fg })
vim.api.nvim_set_hl(0, "@variable.builtin", { fg = colors.red })
vim.api.nvim_set_hl(0, "@variable.parameter", { fg = colors.red })
vim.api.nvim_set_hl(0, "@variable.member", { fg = colors.cyan })

-- ts: constants
vim.api.nvim_set_hl(0, "@constant", { fg = colors.orange })
vim.api.nvim_set_hl(0, "@constant.builtin", { fg = colors.orange })
vim.api.nvim_set_hl(0, "@constant.macro", { fg = colors.orange })

-- ts: literals
vim.api.nvim_set_hl(0, "@string", { fg = colors.green })
vim.api.nvim_set_hl(0, "@string.documentation", { fg = colors.green })
vim.api.nvim_set_hl(0, "@string.regexp", { fg = colors.orange })
vim.api.nvim_set_hl(0, "@string.escape", { fg = colors.red })
vim.api.nvim_set_hl(0, "@string.special", { fg = colors.dark_cyan })
vim.api.nvim_set_hl(0, "@character", { fg = colors.orange })
vim.api.nvim_set_hl(0, "@character.special", { fg = colors.red })
vim.api.nvim_set_hl(0, "@boolean", { fg = colors.orange })
vim.api.nvim_set_hl(0, "@number", { fg = colors.orange })
vim.api.nvim_set_hl(0, "@float", { fg = colors.orange })

-- ts: types
vim.api.nvim_set_hl(0, "@type", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "@type.builtin", { fg = colors.orange })
vim.api.nvim_set_hl(0, "@type.definition", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "@type.qualifier", { fg = colors.purple })

-- ts: functions
vim.api.nvim_set_hl(0, "@function", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@function.builtin", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "@function.call", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@function.macro", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "@function.method", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@function.method.call", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@constructor", { fg = colors.yellow, bold = true })
vim.api.nvim_set_hl(0, "@operator", { fg = colors.fg })

-- ts: keywords
vim.api.nvim_set_hl(0, "@keyword", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@keyword.coroutine", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@keyword.function", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@keyword.operator", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@keyword.return", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@keyword.debug", { link = "@debug" })
vim.api.nvim_set_hl(0, "@keyword.exception", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@keyword.import", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@keyword.storage", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@keyword.repeat", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@keyword.conditional", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@keyword.directive", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@keyword.directive.define", { link = "@define" })

-- ts: identifiers
vim.api.nvim_set_hl(0, "@parameter", { fg = colors.red })
vim.api.nvim_set_hl(0, "@property", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "@field", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "@method", { link = "@function.method" })
vim.api.nvim_set_hl(0, "@method.call", { link = "@function.method.call" })
vim.api.nvim_set_hl(0, "@namespace", { fg = colors.yellow, italic = true })

-- ts: punctuation
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = colors.light_grey })
vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = colors.light_grey })
vim.api.nvim_set_hl(0, "@punctuation.special", { fg = colors.red })

-- ts: labels
vim.api.nvim_set_hl(0, "@label", { fg = colors.blue })

-- ts: comments
vim.api.nvim_set_hl(0, "@comment", { fg = colors.grey })
vim.api.nvim_set_hl(0, "@comment.documentation", { fg = colors.grey })
vim.api.nvim_set_hl(0, "@comment.error", { fg = colors.red })
vim.api.nvim_set_hl(0, "@comment.warning", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "@comment.todo", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@comment.note", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@comment.fixme", { fg = colors.red })
vim.api.nvim_set_hl(0, "@comment.hack", { fg = colors.orange })
vim.api.nvim_set_hl(0, "@comment.perf", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@comment.sec", { fg = colors.orange })

-- ts: markup
vim.api.nvim_set_hl(0, "@markup", { fg = colors.fg })
vim.api.nvim_set_hl(0, "@markup.strong", { fg = colors.orange, bold = true })
vim.api.nvim_set_hl(0, "@markup.emphasis", { fg = colors.orange, italic = true })
vim.api.nvim_set_hl(0, "@markup.strikethrough", { fg = colors.fg, strikethrough = true })
vim.api.nvim_set_hl(0, "@markup.underline", { fg = colors.fg, underline = true })
vim.api.nvim_set_hl(0, "@markup.heading", { fg = colors.blue, bold = true })
vim.api.nvim_set_hl(0, "@markup.heading.1", { link = "@markup.heading" })
vim.api.nvim_set_hl(0, "@markup.heading.2", { link = "@markup.heading" })
vim.api.nvim_set_hl(0, "@markup.heading.3", { link = "@markup.heading" })
vim.api.nvim_set_hl(0, "@markup.heading.4", { link = "@markup.heading" })
vim.api.nvim_set_hl(0, "@markup.heading.5", { link = "@markup.heading" })
vim.api.nvim_set_hl(0, "@markup.heading.6", { link = "@markup.heading" })
vim.api.nvim_set_hl(0, "@markup.list", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@markup.list.checked", { fg = colors.green })
vim.api.nvim_set_hl(0, "@markup.list.unchecked", { fg = colors.red })
vim.api.nvim_set_hl(0, "@markup.quote", { fg = colors.grey, italic = true })
vim.api.nvim_set_hl(0, "@markup.math", { fg = colors.red })
vim.api.nvim_set_hl(0, "@markup.environment", { fg = colors.red })
vim.api.nvim_set_hl(0, "@markup.link", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@markup.link.label", { fg = colors.red })
vim.api.nvim_set_hl(0, "@markup.link.url", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@markup.raw", { fg = colors.green })
vim.api.nvim_set_hl(0, "@markup.raw.block", { fg = colors.green })
vim.api.nvim_set_hl(0, "@markup.link.marker", { fg = colors.purple })

-- ts: semantic
vim.api.nvim_set_hl(0, "@module", { fg = colors.yellow, italic = true })
vim.api.nvim_set_hl(0, "@attribute", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "@conceal", { fg = colors.grey })
vim.api.nvim_set_hl(0, "@debug", { fg = colors.red })
vim.api.nvim_set_hl(0, "@error", { fg = colors.red })
vim.api.nvim_set_hl(0, "@exception", { fg = colors.red })
vim.api.nvim_set_hl(0, "@tag", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@tag.attribute", { fg = colors.purple })

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
vim.api.nvim_set_hl(0, "@constant.css", { fg = colors.orange })
vim.api.nvim_set_hl(0, "@string.css", { fg = colors.green })
vim.api.nvim_set_hl(0, "@tag.css", { fg = colors.purple })

-- SASS
vim.api.nvim_set_hl(0, "@property.sass", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@string.scss", { fg = colors.green })

-- HTML
vim.api.nvim_set_hl(0, "@tag.html", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@tag.attribute.html", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@tag.delimiter.html", { fg = colors.grey })

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
vim.api.nvim_set_hl(0, "@markup.raw.markdown", { link = "@markup.raw" })
vim.api.nvim_set_hl(0, "@markup.link.markdown", { link = "@markup.link" })
vim.api.nvim_set_hl(0, "@markup.link.label.markdown", { link = "@markup.link.label" })

-- LSP semantic tokens (if Neovim 0.9+)
vim.api.nvim_set_hl(0, "@lsp.type.comment", { link = "@comment" })
vim.api.nvim_set_hl(0, "@lsp.type.enum", { link = "@type" })
vim.api.nvim_set_hl(0, "@lsp.type.enumMember", { link = "@constant.builtin" })
vim.api.nvim_set_hl(0, "@lsp.type.interface", { link = "@type" })
vim.api.nvim_set_hl(0, "@lsp.type.typeParameter", { link = "@type" })
vim.api.nvim_set_hl(0, "@lsp.type.keyword", { link = "@keyword" })
vim.api.nvim_set_hl(0, "@lsp.type.namespace", { link = "@module" })
vim.api.nvim_set_hl(0, "@lsp.type.parameter", { link = "@variable.parameter" })
vim.api.nvim_set_hl(0, "@lsp.type.property", { link = "@property" })
vim.api.nvim_set_hl(0, "@lsp.type.variable", { link = "@variable" })
vim.api.nvim_set_hl(0, "@lsp.type.macro", { link = "@function.macro" })
vim.api.nvim_set_hl(0, "@lsp.type.method", { link = "@function.method" })
vim.api.nvim_set_hl(0, "@lsp.type.number", { link = "@number" })
vim.api.nvim_set_hl(0, "@lsp.type.builtinType", { link = "@type.builtin" })

-- LSP Diagnostic highlights
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = colors.red })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = colors.purple })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "DiagnosticOk", { fg = colors.green })
vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", { fg = colors.grey })
vim.api.nvim_set_hl(0, "DiagnosticDeprecated", { fg = colors.orange, strikethrough = true })

vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { bg = "none", fg = colors.red })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { bg = "none", fg = colors.purple })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { bg = "none", fg = colors.cyan })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { bg = "none", fg = colors.yellow })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextOk", { bg = "none", fg = colors.green })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextUnnecessary", { bg = "none", fg = colors.grey })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextDeprecated", { bg = "none", fg = colors.orange, strikethrough = true })

vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { underline = true, sp = colors.red })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { underline = true, sp = colors.purple })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { underline = true, sp = colors.blue })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { underline = true, sp = colors.yellow })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineOk", { underline = true, sp = colors.green })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineUnnecessary", { underline = true, sp = colors.grey })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineDeprecated", { strikethrough = true, sp = colors.orange })

-- LSP references
vim.api.nvim_set_hl(0, "LspReferenceText", { bg = colors.bg2 })
vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = colors.bg2 })
vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = colors.bg2 })

-- Code lens
vim.api.nvim_set_hl(0, "LspCodeLens", { fg = colors.grey })

-- Git signs (gitsigns)
vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = colors.green })
vim.api.nvim_set_hl(0, "GitSignsChange", { fg = colors.blue })
vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = colors.red })

-- Telescope
vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = colors.red })
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = colors.orange, bold = true })
vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = colors.green })
vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = colors.bg2 })
vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg = colors.yellow })

-- NvimTree
vim.api.nvim_set_hl(0, "NvimTreeNormal", { fg = colors.fg, bg = colors.bg_d })
vim.api.nvim_set_hl(0, "NvimTreeNormalFloat", { fg = colors.fg, bg = colors.bg_d })
vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { fg = colors.bg_d, bg = colors.bg_d })
vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { fg = colors.bg2, bg = colors.bg_d })
vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = colors.orange, bold = true })
vim.api.nvim_set_hl(0, "NvimTreeGitDirty", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "NvimTreeGitNew", { fg = colors.green })
vim.api.nvim_set_hl(0, "NvimTreeGitDeleted", { fg = colors.red })
vim.api.nvim_set_hl(0, "NvimTreeSpecialFile", { fg = colors.yellow, underline = true })
vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = colors.fg })
vim.api.nvim_set_hl(0, "NvimTreeImageFile", { fg = colors.dark_purple })
vim.api.nvim_set_hl(0, "NvimTreeSymlink", { fg = colors.purple })
vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = colors.blue })

-- Cmp (completion)
vim.api.nvim_set_hl(0, "CmpItemAbbr", { fg = colors.fg })
vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { fg = colors.light_grey, strikethrough = true })
vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = colors.cyan, underline = true })
vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = colors.light_grey })
vim.api.nvim_set_hl(0, "CmpItemKind", { fg = colors.purple })

-- WhichKey
vim.api.nvim_set_hl(0, "WhichKey", { fg = colors.red })
vim.api.nvim_set_hl(0, "WhichKeyDesc", { fg = colors.blue })
vim.api.nvim_set_hl(0, "WhichKeyGroup", { fg = colors.orange })
vim.api.nvim_set_hl(0, "WhichKeySeparator", { fg = colors.green })

-- Hop
vim.api.nvim_set_hl(0, "HopNextKey", { fg = colors.red, bold = true })
vim.api.nvim_set_hl(0, "HopNextKey1", { fg = colors.cyan, bold = true })
vim.api.nvim_set_hl(0, "HopNextKey2", { fg = colors.blue })
vim.api.nvim_set_hl(0, "HopUnmatched", { fg = colors.grey })

-- Rainbow delimiters
vim.api.nvim_set_hl(0, "RainbowDelimiterRed", { fg = colors.red })
vim.api.nvim_set_hl(0, "RainbowDelimiterYellow", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "RainbowDelimiterBlue", { fg = colors.blue })
vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", { fg = colors.orange })
vim.api.nvim_set_hl(0, "RainbowDelimiterGreen", { fg = colors.green })
vim.api.nvim_set_hl(0, "RainbowDelimiterViolet", { fg = colors.purple })
vim.api.nvim_set_hl(0, "RainbowDelimiterCyan", { fg = colors.cyan })

-- Terminal colors
vim.g.terminal_color_0 = colors.black
vim.g.terminal_color_1 = colors.red
vim.g.terminal_color_2 = colors.green
vim.g.terminal_color_3 = colors.yellow
vim.g.terminal_color_4 = colors.blue
vim.g.terminal_color_5 = colors.purple
vim.g.terminal_color_6 = colors.cyan
vim.g.terminal_color_7 = colors.fg
vim.g.terminal_color_8 = colors.grey
vim.g.terminal_color_9 = colors.red
vim.g.terminal_color_10 = colors.green
vim.g.terminal_color_11 = colors.yellow
vim.g.terminal_color_12 = colors.blue
vim.g.terminal_color_13 = colors.purple
vim.g.terminal_color_14 = colors.cyan
vim.g.terminal_color_15 = colors.fg

-- Git conflict markers
vim.api.nvim_set_hl(0, "GitConflictCurrent", { bg = colors.green })
vim.api.nvim_set_hl(0, "GitConflictCurrentLabel", { bg = colors.green, bold = true })
vim.api.nvim_set_hl(0, "GitConflictIncoming", { bg = colors.blue })
vim.api.nvim_set_hl(0, "GitConflictIncomingLabel", { bg = colors.blue, bold = true })
vim.api.nvim_set_hl(0, "GitConflictAncestor", { bg = colors.purple })
vim.api.nvim_set_hl(0, "GitConflictAncestorLabel", { bg = colors.purple, bold = true })

-- C language
vim.api.nvim_set_hl(0, "cInclude", { fg = colors.blue })
vim.api.nvim_set_hl(0, "cStorageClass", { fg = colors.purple })
vim.api.nvim_set_hl(0, "cTypedef", { fg = colors.purple })
vim.api.nvim_set_hl(0, "cDefine", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "cTSInclude", { fg = colors.blue })
vim.api.nvim_set_hl(0, "cTSConstant", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "cTSConstMacro", { fg = colors.purple })
vim.api.nvim_set_hl(0, "cTSOperator", { fg = colors.purple })

-- C++ language
vim.api.nvim_set_hl(0, "cppStatement", { fg = colors.purple, bold = true })
vim.api.nvim_set_hl(0, "cppTSInclude", { fg = colors.blue })
vim.api.nvim_set_hl(0, "cppTSConstant", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "cppTSConstMacro", { fg = colors.purple })
vim.api.nvim_set_hl(0, "cppTSOperator", { fg = colors.purple })

-- Markdown
vim.api.nvim_set_hl(0, "markdownBlockquote", { fg = colors.grey })
vim.api.nvim_set_hl(0, "markdownBold", { bold = true })
vim.api.nvim_set_hl(0, "markdownBoldDelimiter", { fg = colors.grey })
vim.api.nvim_set_hl(0, "markdownCode", { fg = colors.green })
vim.api.nvim_set_hl(0, "markdownCodeBlock", { fg = colors.green })
vim.api.nvim_set_hl(0, "markdownCodeDelimiter", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "markdownH1", { fg = colors.red, bold = true })
vim.api.nvim_set_hl(0, "markdownH2", { fg = colors.purple, bold = true })
vim.api.nvim_set_hl(0, "markdownH3", { fg = colors.orange, bold = true })
vim.api.nvim_set_hl(0, "markdownH4", { fg = colors.red, bold = true })
vim.api.nvim_set_hl(0, "markdownH5", { fg = colors.purple, bold = true })
vim.api.nvim_set_hl(0, "markdownH6", { fg = colors.orange, bold = true })
vim.api.nvim_set_hl(0, "markdownHeadingDelimiter", { fg = colors.grey })
vim.api.nvim_set_hl(0, "markdownHeadingRule", { fg = colors.grey })
vim.api.nvim_set_hl(0, "markdownId", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "markdownIdDeclaration", { fg = colors.red })
vim.api.nvim_set_hl(0, "markdownItalic", { italic = true })
vim.api.nvim_set_hl(0, "markdownItalicDelimiter", { fg = colors.grey, italic = true })
vim.api.nvim_set_hl(0, "markdownLinkDelimiter", { fg = colors.grey })
vim.api.nvim_set_hl(0, "markdownLinkText", { fg = colors.red })
vim.api.nvim_set_hl(0, "markdownLinkTextDelimiter", { fg = colors.grey })
vim.api.nvim_set_hl(0, "markdownListMarker", { fg = colors.red })
vim.api.nvim_set_hl(0, "markdownOrderedListMarker", { fg = colors.red })
vim.api.nvim_set_hl(0, "markdownRule", { fg = colors.purple })
vim.api.nvim_set_hl(0, "markdownUrl", { fg = colors.blue, underline = true })
vim.api.nvim_set_hl(0, "markdownUrlDelimiter", { fg = colors.grey })
vim.api.nvim_set_hl(0, "markdownUrlTitleDelimiter", { fg = colors.green })

-- PHP
vim.api.nvim_set_hl(0, "phpFunctions", { fg = colors.fg })
vim.api.nvim_set_hl(0, "phpMethods", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "phpStructure", { fg = colors.purple })
vim.api.nvim_set_hl(0, "phpOperator", { fg = colors.purple })
vim.api.nvim_set_hl(0, "phpMemberSelector", { fg = colors.fg })
vim.api.nvim_set_hl(0, "phpVarSelector", { fg = colors.orange })
vim.api.nvim_set_hl(0, "phpIdentifier", { fg = colors.orange })
vim.api.nvim_set_hl(0, "phpBoolean", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "phpNumber", { fg = colors.orange })
vim.api.nvim_set_hl(0, "phpHereDoc", { fg = colors.green })
vim.api.nvim_set_hl(0, "phpNowDoc", { fg = colors.green })
vim.api.nvim_set_hl(0, "phpSCKeyword", { fg = colors.purple })
vim.api.nvim_set_hl(0, "phpFCKeyword", { fg = colors.purple })
vim.api.nvim_set_hl(0, "phpRegion", { fg = colors.blue })

-- Scala
vim.api.nvim_set_hl(0, "scalaNameDefinition", { fg = colors.fg })
vim.api.nvim_set_hl(0, "scalaInterpolationBoundary", { fg = colors.purple })
vim.api.nvim_set_hl(0, "scalaInterpolation", { fg = colors.purple })
vim.api.nvim_set_hl(0, "scalaTypeOperator", { fg = colors.red })
vim.api.nvim_set_hl(0, "scalaOperator", { fg = colors.red })
vim.api.nvim_set_hl(0, "scalaKeywordModifier", { fg = colors.red })

-- LaTeX/TeX
vim.api.nvim_set_hl(0, "latexTSInclude", { fg = colors.blue })
vim.api.nvim_set_hl(0, "latexTSFuncMacro", { fg = colors.fg })
vim.api.nvim_set_hl(0, "latexTSEnvironment", { fg = colors.cyan, bold = true })
vim.api.nvim_set_hl(0, "latexTSEnvironmentName", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "texCmdEnv", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "texEnvArgName", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "latexTSTitle", { fg = colors.green })
vim.api.nvim_set_hl(0, "latexTSType", { fg = colors.blue })
vim.api.nvim_set_hl(0, "latexTSMath", { fg = colors.orange })
vim.api.nvim_set_hl(0, "texMathZoneX", { fg = colors.orange })
vim.api.nvim_set_hl(0, "texMathZoneXX", { fg = colors.orange })
vim.api.nvim_set_hl(0, "texMathDelimZone", { fg = colors.light_grey })
vim.api.nvim_set_hl(0, "texMathDelim", { fg = colors.purple })
vim.api.nvim_set_hl(0, "texMathOper", { fg = colors.red })
vim.api.nvim_set_hl(0, "texCmd", { fg = colors.purple })
vim.api.nvim_set_hl(0, "texCmdPart", { fg = colors.blue })
vim.api.nvim_set_hl(0, "texCmdPackage", { fg = colors.blue })
vim.api.nvim_set_hl(0, "texPgfType", { fg = colors.yellow })

-- Vim script
vim.api.nvim_set_hl(0, "vimOption", { fg = colors.red })
vim.api.nvim_set_hl(0, "vimSetEqual", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "vimMap", { fg = colors.purple })
vim.api.nvim_set_hl(0, "vimMapModKey", { fg = colors.orange })
vim.api.nvim_set_hl(0, "vimNotation", { fg = colors.red })
vim.api.nvim_set_hl(0, "vimMapLhs", { fg = colors.fg })
vim.api.nvim_set_hl(0, "vimMapRhs", { fg = colors.blue })
vim.api.nvim_set_hl(0, "vimVar", { fg = colors.fg })
vim.api.nvim_set_hl(0, "vimCommentTitle", { fg = colors.light_grey })

-- Indent blankline
vim.api.nvim_set_hl(0, "IndentBlanklineIndent1", { fg = colors.blue })
vim.api.nvim_set_hl(0, "IndentBlanklineIndent2", { fg = colors.green })
vim.api.nvim_set_hl(0, "IndentBlanklineIndent3", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "IndentBlanklineIndent4", { fg = colors.light_grey })
vim.api.nvim_set_hl(0, "IndentBlanklineIndent5", { fg = colors.purple })
vim.api.nvim_set_hl(0, "IndentBlanklineIndent6", { fg = colors.red })
vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = colors.bg1, nocombine = true })
vim.api.nvim_set_hl(0, "IndentBlanklineContextChar", { fg = colors.grey, nocombine = true })
vim.api.nvim_set_hl(0, "IndentBlanklineContextStart", { sp = colors.grey, underline = true })

-- Mini.nvim
vim.api.nvim_set_hl(0, "MiniAnimateCursor", { reverse = true, nocombine = true })
vim.api.nvim_set_hl(0, "MiniHipatternsFixme", { fg = colors.bg0, bg = colors.red, bold = true })
vim.api.nvim_set_hl(0, "MiniHipatternsHack", { fg = colors.bg0, bg = colors.yellow, bold = true })
vim.api.nvim_set_hl(0, "MiniHipatternsNote", { fg = colors.bg0, bg = colors.cyan, bold = true })
vim.api.nvim_set_hl(0, "MiniHipatternsTodo", { fg = colors.bg0, bg = colors.purple, bold = true })
vim.api.nvim_set_hl(0, "MiniIconsAzure", { fg = colors.bg_blue })
vim.api.nvim_set_hl(0, "MiniIconsBlue", { fg = colors.blue })
vim.api.nvim_set_hl(0, "MiniIconsCyan", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "MiniIconsGreen", { fg = colors.green })
vim.api.nvim_set_hl(0, "MiniIconsGrey", { fg = colors.fg })
vim.api.nvim_set_hl(0, "MiniIconsOrange", { fg = colors.orange })
vim.api.nvim_set_hl(0, "MiniIconsPurple", { fg = colors.purple })
vim.api.nvim_set_hl(0, "MiniIconsRed", { fg = colors.red })
vim.api.nvim_set_hl(0, "MiniIconsYellow", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { fg = colors.grey })
vim.api.nvim_set_hl(0, "MiniJump", { fg = colors.purple, underline = true, sp = colors.purple })
vim.api.nvim_set_hl(0, "MiniJump2dSpot", { fg = colors.red, bold = true, nocombine = true })
vim.api.nvim_set_hl(0, "MiniJump2dSpotUnique", { fg = colors.yellow, bold = true, nocombine = true })
vim.api.nvim_set_hl(0, "MiniJump2dSpotAhead", { fg = colors.cyan, bg = colors.bg0, nocombine = true })
vim.api.nvim_set_hl(0, "MiniSurround", { fg = colors.bg0, bg = colors.orange })
vim.api.nvim_set_hl(0, "MiniTablineTabpagesection", { fg = colors.bg0, bg = colors.bg_yellow })
vim.api.nvim_set_hl(0, "MiniTrailspace", { bg = colors.red })

-- Illuminate
vim.api.nvim_set_hl(0, "illuminatedWord", { bg = colors.bg2 })
vim.api.nvim_set_hl(0, "illuminatedCurWord", { bg = colors.bg2 })
vim.api.nvim_set_hl(0, "IlluminatedWordText", { bg = colors.bg2 })
vim.api.nvim_set_hl(0, "IlluminatedWordRead", { bg = colors.bg2 })
vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { bg = colors.bg2 })

-- Dashboard
vim.api.nvim_set_hl(0, "DashboardShortCut", { fg = colors.blue })
vim.api.nvim_set_hl(0, "DashboardHeader", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "DashboardCenter", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "DashboardFooter", { fg = colors.dark_red, italic = true })

-- Barbar
vim.api.nvim_set_hl(0, "BufferCurrent", { bold = true })
vim.api.nvim_set_hl(0, "BufferCurrentMod", { fg = colors.orange, bold = true, italic = true })
vim.api.nvim_set_hl(0, "BufferCurrentSign", { fg = colors.purple })
vim.api.nvim_set_hl(0, "BufferInactiveMod", { fg = colors.light_grey, bg = colors.bg1, italic = true })
vim.api.nvim_set_hl(0, "BufferVisible", { fg = colors.light_grey, bg = colors.bg0 })
vim.api.nvim_set_hl(0, "BufferVisibleMod", { fg = colors.yellow, bg = colors.bg0, italic = true })
vim.api.nvim_set_hl(0, "BufferVisibleIndex", { fg = colors.light_grey, bg = colors.bg0 })
vim.api.nvim_set_hl(0, "BufferVisibleSign", { fg = colors.light_grey, bg = colors.bg0 })
vim.api.nvim_set_hl(0, "BufferVisibleTarget", { fg = colors.light_grey, bg = colors.bg0 })

-- Neo-tree
vim.api.nvim_set_hl(0, "NeoTreeNormal", { fg = colors.fg, bg = colors.bg_d })
vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { fg = colors.fg, bg = colors.bg_d })
vim.api.nvim_set_hl(0, "NeoTreeVertSplit", { fg = colors.bg1, bg = colors.bg1 })
vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { fg = colors.bg1, bg = colors.bg1 })
vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { fg = colors.bg2, bg = colors.bg_d })
vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg = colors.orange, bold = true })
vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = colors.green })
vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { fg = colors.red })
vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "NeoTreeGitConflict", { fg = colors.red, bold = true, italic = true })
vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = colors.red, italic = true })
vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = colors.grey })
vim.api.nvim_set_hl(0, "NeoTreeSymbolicLinkTarget", { fg = colors.purple })

-- Neotest
vim.api.nvim_set_hl(0, "NeotestAdapterName", { fg = colors.purple, bold = true })
vim.api.nvim_set_hl(0, "NeotestDir", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "NeotestExpandMarker", { fg = colors.grey })
vim.api.nvim_set_hl(0, "NeotestFailed", { fg = colors.red })
vim.api.nvim_set_hl(0, "NeotestFile", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "NeotestFocused", { bold = true, italic = true })
vim.api.nvim_set_hl(0, "NeotestIndent", { fg = colors.grey })
vim.api.nvim_set_hl(0, "NeotestMarked", { fg = colors.orange, bold = true })
vim.api.nvim_set_hl(0, "NeotestNamespace", { fg = colors.blue })
vim.api.nvim_set_hl(0, "NeotestPassed", { fg = colors.green })
vim.api.nvim_set_hl(0, "NeotestRunning", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "NeotestWinSelect", { fg = colors.cyan, bold = true })
vim.api.nvim_set_hl(0, "NeotestSkipped", { fg = colors.light_grey })
vim.api.nvim_set_hl(0, "NeotestTarget", { fg = colors.purple })
vim.api.nvim_set_hl(0, "NeotestTest", { fg = colors.fg })
vim.api.nvim_set_hl(0, "NeotestUnknown", { fg = colors.light_grey })

-- Diffview
vim.api.nvim_set_hl(0, "DiffviewFilePanelTitle", { fg = colors.blue, bold = true })
vim.api.nvim_set_hl(0, "DiffviewFilePanelCounter", { fg = colors.purple, bold = true })
vim.api.nvim_set_hl(0, "DiffviewFilePanelFileName", { fg = colors.fg })
vim.api.nvim_set_hl(0, "DiffviewNormal", { fg = colors.fg, bg = colors.bg0 })
vim.api.nvim_set_hl(0, "DiffviewCursorLine", { bg = colors.bg1 })
vim.api.nvim_set_hl(0, "DiffviewVertSplit", { fg = colors.bg3 })
vim.api.nvim_set_hl(0, "DiffviewSignColumn", { fg = colors.fg, bg = colors.bg0 })
vim.api.nvim_set_hl(0, "DiffviewStatusLine", { fg = colors.fg, bg = colors.bg2 })
vim.api.nvim_set_hl(0, "DiffviewStatusLineNC", { fg = colors.grey, bg = colors.bg1 })
vim.api.nvim_set_hl(0, "DiffviewEndOfBuffer", { fg = colors.bg2 })
vim.api.nvim_set_hl(0, "DiffviewFilePanelRootPath", { fg = colors.grey })
vim.api.nvim_set_hl(0, "DiffviewFilePanelPath", { fg = colors.grey })
vim.api.nvim_set_hl(0, "DiffviewFilePanelInsertions", { fg = colors.green })
vim.api.nvim_set_hl(0, "DiffviewFilePanelDeletions", { fg = colors.red })
vim.api.nvim_set_hl(0, "DiffviewStatusAdded", { fg = colors.green })
vim.api.nvim_set_hl(0, "DiffviewStatusUntracked", { fg = colors.blue })
vim.api.nvim_set_hl(0, "DiffviewStatusModified", { fg = colors.blue })
vim.api.nvim_set_hl(0, "DiffviewStatusRenamed", { fg = colors.blue })
vim.api.nvim_set_hl(0, "DiffviewStatusCopied", { fg = colors.blue })
vim.api.nvim_set_hl(0, "DiffviewStatusTypeChange", { fg = colors.blue })
vim.api.nvim_set_hl(0, "DiffviewStatusUnmerged", { fg = colors.blue })
vim.api.nvim_set_hl(0, "DiffviewStatusUnknown", { fg = colors.red })
vim.api.nvim_set_hl(0, "DiffviewStatusDeleted", { fg = colors.red })
vim.api.nvim_set_hl(0, "DiffviewStatusBroken", { fg = colors.red })

-- ALE
vim.api.nvim_set_hl(0, "ALEErrorSign", { fg = colors.red })
vim.api.nvim_set_hl(0, "ALEInfoSign", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "ALEWarningSign", { fg = colors.yellow })

-- Coc
vim.api.nvim_set_hl(0, "CocErrorSign", { fg = colors.red })
vim.api.nvim_set_hl(0, "CocHintSign", { fg = colors.purple })
vim.api.nvim_set_hl(0, "CocInfoSign", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "CocWarningSign", { fg = colors.yellow })

-- Snacks (dashboard and picker)
vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "SnacksDashboardFooter", { fg = colors.dark_red, italic = true })
vim.api.nvim_set_hl(0, "SnacksDashboardSpecial", { fg = colors.dark_red, bold = true })
vim.api.nvim_set_hl(0, "SnacksDashboardDesc", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "SnacksDashboardIcon", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "SnacksDashboardKey", { fg = colors.blue })

vim.api.nvim_set_hl(0, "SnacksPicker", { fg = colors.fg, bg = colors.bg0 })
vim.api.nvim_set_hl(0, "SnacksPickerBorder", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "SnacksPickerTitle", { fg = colors.red })
vim.api.nvim_set_hl(0, "SnacksPickerMatch", { fg = colors.orange, bold = true })

-- Dropbar
vim.api.nvim_set_hl(0, "DropBarIconKind", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "DropBarKind", { fg = colors.fg })
vim.api.nvim_set_hl(0, "DropBarMenuHoverIcon", { reverse = true })
vim.api.nvim_set_hl(0, "DropBarWinBar", { fg = colors.fg, bg = colors.bg0 })
vim.api.nvim_set_hl(0, "DropBarSeparator", { fg = colors.grey })

-- Outline and Navic
vim.api.nvim_set_hl(0, "FocusedSymbol", { fg = colors.purple, bg = colors.bg2, bold = true })
vim.api.nvim_set_hl(0, "AerialLine", { fg = colors.purple, bg = colors.bg2, bold = true })
vim.api.nvim_set_hl(0, "NavicText", { fg = colors.fg })
vim.api.nvim_set_hl(0, "NavicSeparator", { fg = colors.light_grey })

-- LSP Kind icons (using OneDark's color mapping)
vim.api.nvim_set_hl(0, "CmpItemKindDefault", { fg = colors.purple })
vim.api.nvim_set_hl(0, "CmpItemKindArray", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "CmpItemKindBoolean", { fg = colors.orange })
vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "CmpItemKindColor", { fg = colors.green })
vim.api.nvim_set_hl(0, "CmpItemKindConstant", { fg = colors.orange })
vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { fg = colors.blue })
vim.api.nvim_set_hl(0, "CmpItemKindEnum", { fg = colors.purple })
vim.api.nvim_set_hl(0, "CmpItemKindEnumMember", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "CmpItemKindEvent", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "CmpItemKindField", { fg = colors.purple })
vim.api.nvim_set_hl(0, "CmpItemKindFile", { fg = colors.blue })
vim.api.nvim_set_hl(0, "CmpItemKindFolder", { fg = colors.orange })
vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = colors.blue })
vim.api.nvim_set_hl(0, "CmpItemKindInterface", { fg = colors.green })
vim.api.nvim_set_hl(0, "CmpItemKindKey", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = colors.blue })
vim.api.nvim_set_hl(0, "CmpItemKindModule", { fg = colors.orange })
vim.api.nvim_set_hl(0, "CmpItemKindNamespace", { fg = colors.red })
vim.api.nvim_set_hl(0, "CmpItemKindNull", { fg = colors.grey })
vim.api.nvim_set_hl(0, "CmpItemKindNumber", { fg = colors.orange })
vim.api.nvim_set_hl(0, "CmpItemKindObject", { fg = colors.red })
vim.api.nvim_set_hl(0, "CmpItemKindOperator", { fg = colors.red })
vim.api.nvim_set_hl(0, "CmpItemKindPackage", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "CmpItemKindProperty", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "CmpItemKindReference", { fg = colors.orange })
vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = colors.red })
vim.api.nvim_set_hl(0, "CmpItemKindString", { fg = colors.green })
vim.api.nvim_set_hl(0, "CmpItemKindStruct", { fg = colors.purple })
vim.api.nvim_set_hl(0, "CmpItemKindText", { fg = colors.light_grey })
vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", { fg = colors.red })
vim.api.nvim_set_hl(0, "CmpItemKindUnit", { fg = colors.green })
vim.api.nvim_set_hl(0, "CmpItemKindValue", { fg = colors.orange })
vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = colors.purple })

vim.api.nvim_set_hl(0, "BlinkCmpLabel", { fg = colors.fg })
vim.api.nvim_set_hl(0, "BlinkCmpLabelDeprecated", { fg = colors.light_grey, strikethrough = true })
vim.api.nvim_set_hl(0, "BlinkCmpLabelMatch", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "BlinkCmpDetail", { fg = colors.light_grey })
vim.api.nvim_set_hl(0, "BlinkCmpKind", { fg = colors.purple })
vim.api.nvim_set_hl(0, "BlinkCmpKindDefault", { fg = colors.purple })
vim.api.nvim_set_hl(0, "BlinkCmpKindArray", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "BlinkCmpKindBoolean", { fg = colors.orange })
vim.api.nvim_set_hl(0, "BlinkCmpKindClass", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "BlinkCmpKindColor", { fg = colors.green })
vim.api.nvim_set_hl(0, "BlinkCmpKindConstant", { fg = colors.orange })
vim.api.nvim_set_hl(0, "BlinkCmpKindConstructor", { fg = colors.blue })
vim.api.nvim_set_hl(0, "BlinkCmpKindEnum", { fg = colors.purple })
vim.api.nvim_set_hl(0, "BlinkCmpKindEnumMember", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "BlinkCmpKindEvent", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "BlinkCmpKindField", { fg = colors.purple })
vim.api.nvim_set_hl(0, "BlinkCmpKindFile", { fg = colors.blue })
vim.api.nvim_set_hl(0, "BlinkCmpKindFolder", { fg = colors.orange })
vim.api.nvim_set_hl(0, "BlinkCmpKindFunction", { fg = colors.blue })
vim.api.nvim_set_hl(0, "BlinkCmpKindInterface", { fg = colors.green })
vim.api.nvim_set_hl(0, "BlinkCmpKindKey", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "BlinkCmpKindKeyword", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "BlinkCmpKindMethod", { fg = colors.blue })
vim.api.nvim_set_hl(0, "BlinkCmpKindModule", { fg = colors.orange })
vim.api.nvim_set_hl(0, "BlinkCmpKindNamespace", { fg = colors.red })
vim.api.nvim_set_hl(0, "BlinkCmpKindNull", { fg = colors.grey })
vim.api.nvim_set_hl(0, "BlinkCmpKindNumber", { fg = colors.orange })
vim.api.nvim_set_hl(0, "BlinkCmpKindObject", { fg = colors.red })
vim.api.nvim_set_hl(0, "BlinkCmpKindOperator", { fg = colors.red })
vim.api.nvim_set_hl(0, "BlinkCmpKindPackage", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "BlinkCmpKindProperty", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "BlinkCmpKindReference", { fg = colors.orange })
vim.api.nvim_set_hl(0, "BlinkCmpKindSnippet", { fg = colors.red })
vim.api.nvim_set_hl(0, "BlinkCmpKindString", { fg = colors.green })
vim.api.nvim_set_hl(0, "BlinkCmpKindStruct", { fg = colors.purple })
vim.api.nvim_set_hl(0, "BlinkCmpKindText", { fg = colors.light_grey })
vim.api.nvim_set_hl(0, "BlinkCmpKindTypeParameter", { fg = colors.red })
vim.api.nvim_set_hl(0, "BlinkCmpKindUnit", { fg = colors.green })
vim.api.nvim_set_hl(0, "BlinkCmpKindValue", { fg = colors.orange })
vim.api.nvim_set_hl(0, "BlinkCmpKindVariable", { fg = colors.purple })

-- Aerial icons
vim.api.nvim_set_hl(0, "AerialArrayIcon", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "AerialBooleanIcon", { fg = colors.orange })
vim.api.nvim_set_hl(0, "AerialClassIcon", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "AerialConstantIcon", { fg = colors.orange })
vim.api.nvim_set_hl(0, "AerialConstructorIcon", { fg = colors.blue })
vim.api.nvim_set_hl(0, "AerialEnumIcon", { fg = colors.purple })
vim.api.nvim_set_hl(0, "AerialEnumMemberIcon", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "AerialEventIcon", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "AerialFieldIcon", { fg = colors.purple })
vim.api.nvim_set_hl(0, "AerialFileIcon", { fg = colors.blue })
vim.api.nvim_set_hl(0, "AerialFolderIcon", { fg = colors.orange })
vim.api.nvim_set_hl(0, "AerialFunctionIcon", { fg = colors.blue })
vim.api.nvim_set_hl(0, "AerialInterfaceIcon", { fg = colors.green })
vim.api.nvim_set_hl(0, "AerialKeyIcon", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "AerialKeywordIcon", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "AerialMethodIcon", { fg = colors.blue })
vim.api.nvim_set_hl(0, "AerialModuleIcon", { fg = colors.orange })
vim.api.nvim_set_hl(0, "AerialNamespaceIcon", { fg = colors.red })
vim.api.nvim_set_hl(0, "AerialNullIcon", { fg = colors.grey })
vim.api.nvim_set_hl(0, "AerialNumberIcon", { fg = colors.orange })
vim.api.nvim_set_hl(0, "AerialObjectIcon", { fg = colors.red })
vim.api.nvim_set_hl(0, "AerialOperatorIcon", { fg = colors.red })
vim.api.nvim_set_hl(0, "AerialPackageIcon", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "AerialPropertyIcon", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "AerialReferenceIcon", { fg = colors.orange })
vim.api.nvim_set_hl(0, "AerialSnippetIcon", { fg = colors.red })
vim.api.nvim_set_hl(0, "AerialStringIcon", { fg = colors.green })
vim.api.nvim_set_hl(0, "AerialStructIcon", { fg = colors.purple })
vim.api.nvim_set_hl(0, "AerialTextIcon", { fg = colors.light_grey })
vim.api.nvim_set_hl(0, "AerialTypeParameterIcon", { fg = colors.red })
vim.api.nvim_set_hl(0, "AerialUnitIcon", { fg = colors.green })
vim.api.nvim_set_hl(0, "AerialValueIcon", { fg = colors.orange })
vim.api.nvim_set_hl(0, "AerialVariableIcon", { fg = colors.purple })

