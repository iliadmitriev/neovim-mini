local colors = {
  -- Base colors (night variant)
  bg = "#1a1b26",
  bg_dark = "#16161e",
  bg_dark1 = "#0C0E14",
  bg_highlight = "#292e42",
  fg = "#c0caf5",
  fg_dark = "#a9b1d6",
  fg_gutter = "#3b4261",
  comment = "#565f89",
  dark3 = "#545c7e",
  dark5 = "#737aa2",

  -- Blue colors
  blue = "#7aa2f7",
  blue0 = "#3d59a1",
  blue1 = "#2ac3de",
  blue2 = "#0db9d7",
  blue5 = "#89ddff",
  blue6 = "#b4f9f8",
  blue7 = "#394b70",

  -- Green colors
  green = "#9ece6a",
  green1 = "#73daca",
  green2 = "#41a6b5",

  -- Red colors
  red = "#f7768e",
  red1 = "#db4b4b",

  -- Other colors
  cyan = "#7dcfff",
  magenta = "#bb9af7",
  magenta2 = "#ff007c",
  orange = "#ff9e64",
  purple = "#9d7cd8",
  teal = "#1abc9c",
  terminal_black = "#414868",
  yellow = "#e0af68",

  -- Git colors
  git_add = "#449dab",
  git_change = "#6183bb",
  git_delete = "#914c54",
}


-- Editor highlights
vim.api.nvim_set_hl(0, "ColorColumn", { bg = colors.bg_dark })
vim.api.nvim_set_hl(0, "Conceal", { fg = colors.blue0 })
vim.api.nvim_set_hl(0, "Cursor", { fg = colors.bg, bg = colors.fg })
vim.api.nvim_set_hl(0, "lCursor", { fg = colors.bg, bg = colors.fg })
vim.api.nvim_set_hl(0, "CursorIM", { fg = colors.bg, bg = colors.fg })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = colors.bg_dark })
vim.api.nvim_set_hl(0, "CursorLine", { bg = colors.bg_dark })
vim.api.nvim_set_hl(0, "Directory", { fg = colors.blue })
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = colors.bg })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = colors.red, bold = true, italic = true })
vim.api.nvim_set_hl(0, "VertSplit", { fg = colors.bg_dark1 })
vim.api.nvim_set_hl(0, "Folded", { fg = colors.blue, bg = colors.bg_dark })
vim.api.nvim_set_hl(0, "FoldColumn", { fg = colors.dark3 })
vim.api.nvim_set_hl(0, "SignColumn", { fg = colors.fg_gutter })
vim.api.nvim_set_hl(0, "SignColumnSB", { bg = colors.bg_dark1, fg = colors.fg_gutter })
vim.api.nvim_set_hl(0, "Substitute", { bg = colors.bg_dark, fg = colors.orange })
vim.api.nvim_set_hl(0, "LineNr", { fg = colors.dark3 })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.fg })
vim.api.nvim_set_hl(0, "MatchParen", { fg = colors.orange, bg = colors.bg_dark, bold = true })
vim.api.nvim_set_hl(0, "ModeMsg", { fg = colors.fg, bold = true })
vim.api.nvim_set_hl(0, "MsgSeparator", { link = "WinSeparator" })
vim.api.nvim_set_hl(0, "MoreMsg", { fg = colors.blue })
vim.api.nvim_set_hl(0, "NonText", { fg = colors.dark3 })
vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
vim.api.nvim_set_hl(0, "NormalNC", { fg = colors.fg, bg = colors.bg })
vim.api.nvim_set_hl(0, "NormalSB", { fg = colors.fg, bg = colors.bg_dark1 })
vim.api.nvim_set_hl(0, "NormalFloat", { fg = colors.fg, bg = colors.bg_dark })
vim.api.nvim_set_hl(0, "FloatBorder", { fg = colors.blue, bg = colors.bg_dark })
vim.api.nvim_set_hl(0, "FloatTitle", { fg = colors.fg_dark, bg = colors.bg_dark })
vim.api.nvim_set_hl(0, "FloatShadow", { fg = colors.dark3 })
vim.api.nvim_set_hl(0, "Pmenu", { bg = colors.bg_dark, fg = colors.fg_dark })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = colors.bg_dark1, bold = true })
vim.api.nvim_set_hl(0, "PmenuMatch", { fg = colors.fg, bold = true })
vim.api.nvim_set_hl(0, "PmenuMatchSel", { bold = true })
vim.api.nvim_set_hl(0, "PmenuSbar", { bg = colors.bg_dark1 })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = colors.dark3 })
vim.api.nvim_set_hl(0, "PmenuExtra", { fg = colors.dark3 })
vim.api.nvim_set_hl(0, "PmenuExtraSel", { bg = colors.bg_dark1, fg = colors.dark3, bold = true })
vim.api.nvim_set_hl(0, "ComplMatchIns", { link = "PreInsert" })
vim.api.nvim_set_hl(0, "PreInsert", { fg = colors.fg_dark })
vim.api.nvim_set_hl(0, "ComplHint", { fg = colors.dark5 })
vim.api.nvim_set_hl(0, "ComplHintMore", { link = "Question" })
vim.api.nvim_set_hl(0, "Question", { fg = colors.blue })
vim.api.nvim_set_hl(0, "QuickFixLine", { bg = colors.bg_dark, bold = true })
vim.api.nvim_set_hl(0, "Search", { bg = colors.blue, fg = colors.bg })
vim.api.nvim_set_hl(0, "IncSearch", { bg = colors.blue, fg = colors.bg })
vim.api.nvim_set_hl(0, "CurSearch", { bg = colors.orange, fg = colors.bg })
vim.api.nvim_set_hl(0, "SpecialKey", { link = "NonText" })
vim.api.nvim_set_hl(0, "SpellBad", { sp = colors.red, undercurl = true })
vim.api.nvim_set_hl(0, "SpellCap", { sp = colors.yellow, undercurl = true })
vim.api.nvim_set_hl(0, "SpellLocal", { sp = colors.blue, undercurl = true })
vim.api.nvim_set_hl(0, "SpellRare", { sp = colors.green, undercurl = true })
vim.api.nvim_set_hl(0, "StatusLine", { fg = colors.fg, bg = colors.bg_dark })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.dark3, bg = colors.bg_dark })
vim.api.nvim_set_hl(0, "TabLine", { bg = colors.bg_dark1, fg = colors.dark3 })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = colors.bg_dark })
vim.api.nvim_set_hl(0, "TabLineSel", { link = "Normal" })
vim.api.nvim_set_hl(0, "TermCursor", { fg = colors.bg, bg = colors.fg })
vim.api.nvim_set_hl(0, "TermCursorNC", { fg = colors.bg, bg = colors.dark5 })
vim.api.nvim_set_hl(0, "Title", { fg = colors.blue, bold = true })
vim.api.nvim_set_hl(0, "Visual", { bg = colors.bg_highlight })
vim.api.nvim_set_hl(0, "VisualNOS", { bg = colors.bg_highlight })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "Whitespace", { fg = colors.bg_dark })
vim.api.nvim_set_hl(0, "WildMenu", { bg = colors.dark3 })
vim.api.nvim_set_hl(0, "WinBar", { fg = colors.fg })
vim.api.nvim_set_hl(0, "WinBarNC", { link = "WinBar" })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = colors.bg_dark1 })

-- Syntax highlights
vim.api.nvim_set_hl(0, "Comment", { fg = colors.comment, italic = true })
vim.api.nvim_set_hl(0, "SpecialComment", { fg = colors.comment })

vim.api.nvim_set_hl(0, "Constant", { fg = colors.orange })
vim.api.nvim_set_hl(0, "String", { fg = colors.green })
vim.api.nvim_set_hl(0, "Character", { fg = colors.green })
vim.api.nvim_set_hl(0, "Number", { fg = colors.orange })
vim.api.nvim_set_hl(0, "Float", { link = "Number" })
vim.api.nvim_set_hl(0, "Boolean", { fg = colors.orange })

vim.api.nvim_set_hl(0, "Identifier", { fg = colors.fg })
vim.api.nvim_set_hl(0, "Function", { fg = colors.blue })

vim.api.nvim_set_hl(0, "Statement", { fg = colors.purple })
vim.api.nvim_set_hl(0, "Conditional", { fg = colors.purple })
vim.api.nvim_set_hl(0, "Repeat", { fg = colors.purple })
vim.api.nvim_set_hl(0, "Label", { fg = colors.blue })
vim.api.nvim_set_hl(0, "Operator", { fg = colors.blue5 })
vim.api.nvim_set_hl(0, "Keyword", { fg = colors.purple })
vim.api.nvim_set_hl(0, "Exception", { fg = colors.purple })

vim.api.nvim_set_hl(0, "PreProc", { fg = colors.magenta })
vim.api.nvim_set_hl(0, "Include", { fg = colors.magenta })
vim.api.nvim_set_hl(0, "Define", { link = "PreProc" })
vim.api.nvim_set_hl(0, "Macro", { fg = colors.magenta })
vim.api.nvim_set_hl(0, "PreCondit", { link = "PreProc" })

vim.api.nvim_set_hl(0, "StorageClass", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "Structure", { fg = colors.blue })
vim.api.nvim_set_hl(0, "Special", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "Type", { fg = colors.blue })
vim.api.nvim_set_hl(0, "Typedef", { link = "Type" })
vim.api.nvim_set_hl(0, "SpecialChar", { link = "Special" })
vim.api.nvim_set_hl(0, "Tag", { fg = colors.fg, bold = true })
vim.api.nvim_set_hl(0, "Delimiter", { fg = colors.fg })
vim.api.nvim_set_hl(0, "Debug", { link = "Special" })

vim.api.nvim_set_hl(0, "Underlined", { underline = true })
vim.api.nvim_set_hl(0, "Bold", { bold = true })
vim.api.nvim_set_hl(0, "Italic", { italic = true })

vim.api.nvim_set_hl(0, "Error", { fg = colors.red })
vim.api.nvim_set_hl(0, "Todo", { bg = colors.yellow, fg = colors.bg, bold = true })

vim.api.nvim_set_hl(0, "qfLineNr", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "qfFileName", { fg = colors.blue })

vim.api.nvim_set_hl(0, "htmlH1", { fg = colors.red, bold = true })
vim.api.nvim_set_hl(0, "htmlH2", { fg = colors.orange, bold = true })
vim.api.nvim_set_hl(0, "mkdCodeDelimiter", { bg = colors.bg, fg = colors.fg })
vim.api.nvim_set_hl(0, "mkdCodeStart", { fg = colors.magenta, bold = true })
vim.api.nvim_set_hl(0, "mkdCodeEnd", { fg = colors.magenta, bold = true })

-- debugging
vim.api.nvim_set_hl(0, "debugPC", { bg = colors.bg_dark1 })
vim.api.nvim_set_hl(0, "debugBreakpoint", { bg = colors.bg, fg = colors.dark3 })

-- illuminate
vim.api.nvim_set_hl(0, "illuminatedWord", { bg = colors.bg_dark })
vim.api.nvim_set_hl(0, "illuminatedCurWord", { bg = colors.bg_dark })

-- diff
vim.api.nvim_set_hl(0, "Added", { fg = colors.git_add })
vim.api.nvim_set_hl(0, "Changed", { fg = colors.git_change })
vim.api.nvim_set_hl(0, "diffAdded", { fg = colors.git_add })
vim.api.nvim_set_hl(0, "diffRemoved", { fg = colors.git_delete })
vim.api.nvim_set_hl(0, "diffChanged", { fg = colors.git_change })
vim.api.nvim_set_hl(0, "diffOldFile", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "diffNewFile", { fg = colors.orange })
vim.api.nvim_set_hl(0, "diffFile", { fg = colors.blue })
vim.api.nvim_set_hl(0, "diffLine", { fg = colors.dark3 })
vim.api.nvim_set_hl(0, "diffIndexLine", { fg = colors.teal })
vim.api.nvim_set_hl(0, "DiffAdd", { bg = colors.git_add })
vim.api.nvim_set_hl(0, "DiffChange", { bg = colors.git_change })
vim.api.nvim_set_hl(0, "DiffDelete", { bg = colors.git_delete })
vim.api.nvim_set_hl(0, "DiffText", { bg = colors.blue })

-- NeoVim
vim.api.nvim_set_hl(0, "healthError", { fg = colors.red })
vim.api.nvim_set_hl(0, "healthSuccess", { fg = colors.green })
vim.api.nvim_set_hl(0, "healthWarning", { fg = colors.yellow })

-- misc
-- glyphs
vim.api.nvim_set_hl(0, "GlyphPalette1", { fg = colors.red })
vim.api.nvim_set_hl(0, "GlyphPalette2", { fg = colors.green })
vim.api.nvim_set_hl(0, "GlyphPalette3", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "GlyphPalette4", { fg = colors.blue })
vim.api.nvim_set_hl(0, "GlyphPalette6", { fg = colors.green1 })
vim.api.nvim_set_hl(0, "GlyphPalette7", { fg = colors.fg })
vim.api.nvim_set_hl(0, "GlyphPalette9", { fg = colors.red })

-- rainbow
vim.api.nvim_set_hl(0, "rainbow1", { fg = colors.red })
vim.api.nvim_set_hl(0, "rainbow2", { fg = colors.orange })
vim.api.nvim_set_hl(0, "rainbow3", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "rainbow4", { fg = colors.green })
vim.api.nvim_set_hl(0, "rainbow5", { fg = colors.blue })
vim.api.nvim_set_hl(0, "rainbow6", { fg = colors.magenta })

-- csv
vim.api.nvim_set_hl(0, "csvCol0", { fg = colors.red })
vim.api.nvim_set_hl(0, "csvCol1", { fg = colors.orange })
vim.api.nvim_set_hl(0, "csvCol2", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "csvCol3", { fg = colors.green })
vim.api.nvim_set_hl(0, "csvCol4", { fg = colors.blue })
vim.api.nvim_set_hl(0, "csvCol5", { fg = colors.magenta })
vim.api.nvim_set_hl(0, "csvCol6", { fg = colors.purple })
vim.api.nvim_set_hl(0, "csvCol7", { fg = colors.teal })
vim.api.nvim_set_hl(0, "csvCol8", { fg = colors.cyan })

-- markdown
vim.api.nvim_set_hl(0, "markdownHeadingDelimiter", { fg = colors.orange, bold = true })
vim.api.nvim_set_hl(0, "markdownCode", { fg = colors.green })
vim.api.nvim_set_hl(0, "markdownCodeBlock", { fg = colors.green })
vim.api.nvim_set_hl(0, "markdownLinkText", { fg = colors.blue, underline = true })
vim.api.nvim_set_hl(0, "markdownH1", { link = "rainbow1" })
vim.api.nvim_set_hl(0, "markdownH2", { link = "rainbow2" })
vim.api.nvim_set_hl(0, "markdownH3", { link = "rainbow3" })
vim.api.nvim_set_hl(0, "markdownH4", { link = "rainbow4" })
vim.api.nvim_set_hl(0, "markdownH5", { link = "rainbow5" })
vim.api.nvim_set_hl(0, "markdownH6", { link = "rainbow6" })

-- Treesitter highlights
vim.api.nvim_set_hl(0, "@variable", { fg = colors.fg })
vim.api.nvim_set_hl(0, "@variable.builtin", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@variable.parameter", { fg = colors.orange })
vim.api.nvim_set_hl(0, "@variable.member", { fg = colors.fg })

-- ts: constants
vim.api.nvim_set_hl(0, "@constant", { fg = colors.orange })
vim.api.nvim_set_hl(0, "@constant.builtin", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@constant.macro", { fg = colors.magenta })

-- ts: literals
vim.api.nvim_set_hl(0, "@string", { fg = colors.green })
vim.api.nvim_set_hl(0, "@string.documentation", { fg = colors.green })
vim.api.nvim_set_hl(0, "@string.regexp", { fg = colors.red })
vim.api.nvim_set_hl(0, "@string.escape", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@string.special", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@character", { fg = colors.green })
vim.api.nvim_set_hl(0, "@character.special", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@boolean", { fg = colors.orange })
vim.api.nvim_set_hl(0, "@number", { fg = colors.orange })
vim.api.nvim_set_hl(0, "@float", { fg = colors.orange })

-- ts: types
vim.api.nvim_set_hl(0, "@type", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@type.builtin", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@type.definition", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@type.qualifier", { fg = colors.purple })

-- ts: functions
vim.api.nvim_set_hl(0, "@function", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@function.builtin", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@function.call", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@function.macro", { fg = colors.magenta })
vim.api.nvim_set_hl(0, "@function.method", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@function.method.call", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@constructor", { fg = colors.blue1 })
vim.api.nvim_set_hl(0, "@operator", { fg = colors.blue5 })

-- ts: keywords
vim.api.nvim_set_hl(0, "@keyword", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@keyword.coroutine", { fg = colors.magenta })
vim.api.nvim_set_hl(0, "@keyword.function", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@keyword.operator", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@keyword.return", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@keyword.debug", { link = "@debug" })
vim.api.nvim_set_hl(0, "@keyword.exception", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@keyword.import", { fg = colors.magenta })
vim.api.nvim_set_hl(0, "@keyword.storage", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@keyword.repeat", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@keyword.conditional", { fg = colors.purple })
vim.api.nvim_set_hl(0, "@keyword.directive", { fg = colors.magenta })
vim.api.nvim_set_hl(0, "@keyword.directive.define", { link = "@define" })

-- ts: identifiers
vim.api.nvim_set_hl(0, "@parameter", { fg = colors.orange })
vim.api.nvim_set_hl(0, "@property", { fg = colors.fg })
vim.api.nvim_set_hl(0, "@field", { fg = colors.fg })
vim.api.nvim_set_hl(0, "@method", { link = "@function.method" })
vim.api.nvim_set_hl(0, "@method.call", { link = "@function.method.call" })
vim.api.nvim_set_hl(0, "@namespace", { fg = colors.yellow, italic = true })

-- ts: punctuation
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = colors.fg })
vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = colors.fg })
vim.api.nvim_set_hl(0, "@punctuation.special", { fg = colors.magenta })

-- ts: labels
vim.api.nvim_set_hl(0, "@label", { fg = colors.blue })

-- ts: comments
vim.api.nvim_set_hl(0, "@comment", { fg = colors.comment, italic = true })
vim.api.nvim_set_hl(0, "@comment.documentation", { fg = colors.comment })
vim.api.nvim_set_hl(0, "@comment.error", { fg = colors.red, bold = true, italic = true })
vim.api.nvim_set_hl(0, "@comment.warning", { fg = colors.orange, bold = true, italic = true })
vim.api.nvim_set_hl(0, "@comment.todo", { fg = colors.yellow, bold = true, italic = true })
vim.api.nvim_set_hl(0, "@comment.note", { fg = colors.blue, bold = true, italic = true })
vim.api.nvim_set_hl(0, "@comment.fixme", { fg = colors.red, bold = true, italic = true })
vim.api.nvim_set_hl(0, "@comment.hack", { fg = colors.orange, bold = true, italic = true })
vim.api.nvim_set_hl(0, "@comment.perf", { fg = colors.magenta, bold = true, italic = true })
vim.api.nvim_set_hl(0, "@comment.sec", { fg = colors.orange, bold = true, italic = true })

-- ts: markup
vim.api.nvim_set_hl(0, "@markup", { fg = colors.fg })
vim.api.nvim_set_hl(0, "@markup.strong", { fg = colors.orange, bold = true })
vim.api.nvim_set_hl(0, "@markup.emphasis", { fg = colors.orange, italic = true })
vim.api.nvim_set_hl(0, "@markup.strikethrough", { fg = colors.fg, strikethrough = true })
vim.api.nvim_set_hl(0, "@markup.underline", { fg = colors.blue, underline = true })
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
vim.api.nvim_set_hl(0, "@markup.quote", { fg = colors.blue1 })
vim.api.nvim_set_hl(0, "@markup.math", { fg = colors.magenta })
vim.api.nvim_set_hl(0, "@markup.environment", { fg = colors.magenta })
vim.api.nvim_set_hl(0, "@markup.link", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@markup.link.label", { fg = colors.fg })
vim.api.nvim_set_hl(0, "@markup.link.url", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@markup.raw", { fg = colors.green })
vim.api.nvim_set_hl(0, "@markup.raw.block", { fg = colors.fg_dark })
vim.api.nvim_set_hl(0, "@markup.link.marker", { fg = colors.purple })

-- ts: semantic
vim.api.nvim_set_hl(0, "@module", { fg = colors.yellow, italic = true })
vim.api.nvim_set_hl(0, "@attribute", { fg = colors.magenta })
vim.api.nvim_set_hl(0, "@conceal", { fg = colors.comment })
vim.api.nvim_set_hl(0, "@debug", { fg = colors.red })
vim.api.nvim_set_hl(0, "@error", { fg = colors.red })
vim.api.nvim_set_hl(0, "@exception", { fg = colors.red })
vim.api.nvim_set_hl(0, "@tag", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = colors.dark3 })
vim.api.nvim_set_hl(0, "@tag.attribute", { fg = colors.magenta })

-- ts: diff
vim.api.nvim_set_hl(0, "@diff.plus", { fg = colors.git_add })
vim.api.nvim_set_hl(0, "@diff.minus", { fg = colors.git_delete })
vim.api.nvim_set_hl(0, "@diff.delta", { fg = colors.git_change })

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
vim.api.nvim_set_hl(0, "@tag.css", { fg = colors.magenta })

-- SASS
vim.api.nvim_set_hl(0, "@property.sass", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@string.scss", { fg = colors.green })

-- HTML
vim.api.nvim_set_hl(0, "@tag.html", { fg = colors.blue })
vim.api.nvim_set_hl(0, "@tag.attribute.html", { fg = colors.magenta })
vim.api.nvim_set_hl(0, "@tag.delimiter.html", { fg = colors.dark3 })

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

