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

-- Modern API function to set highlights
local function set_highlight(group, fg, bg, attr)
  local hl_opts = {}
  if fg then
    hl_opts.foreground = fg
  end
  if bg then
    hl_opts.background = bg
  end
  if attr then
    if attr == "italic" then
      hl_opts.italic = true
    elseif attr == "bold" then
      hl_opts.bold = true
    elseif attr == "underline" then
      hl_opts.underline = true
    elseif attr == "bold,italic" then
      hl_opts.bold = true
      hl_opts.italic = true
    elseif attr == "bold,underline" then
      hl_opts.bold = true
      hl_opts.underline = true
    end
  end
  vim.api.nvim_set_hl(0, group, hl_opts)
end

-- Set highlight groups using the palette
set_highlight("Normal", palette.text, palette.base, nil)
set_highlight("Comment", palette.overlay0, nil, "italic")
set_highlight("Constant", palette.peach, nil, nil)
set_highlight("String", palette.green, nil, nil)
set_highlight("Character", palette.green, nil, nil)
set_highlight("Number", palette.peach, nil, nil)
set_highlight("Boolean", palette.mauve, nil, nil)
set_highlight("Float", palette.peach, nil, nil)
set_highlight("Identifier", palette.blue, nil, nil)
set_highlight("Function", palette.blue, nil, nil)
set_highlight("Statement", palette.mauve, nil, nil)
set_highlight("Conditional", palette.mauve, nil, nil)
set_highlight("Repeat", palette.mauve, nil, nil)
set_highlight("Label", palette.mauve, nil, nil)
set_highlight("Operator", palette.sky, nil, nil)
set_highlight("Keyword", palette.mauve, nil, nil)
set_highlight("Exception", palette.mauve, nil, nil)
set_highlight("PreProc", palette.mauve, nil, nil)
set_highlight("Include", palette.mauve, nil, nil)
set_highlight("Define", palette.mauve, nil, nil)
set_highlight("Macro", palette.mauve, nil, nil)
set_highlight("PreCondit", palette.mauve, nil, nil)
set_highlight("Type", palette.yellow, nil, nil)
set_highlight("StorageClass", palette.yellow, nil, nil)
set_highlight("Structure", palette.yellow, nil, nil)
set_highlight("Typedef", palette.yellow, nil, nil)
set_highlight("Special", palette.pink, nil, nil)
set_highlight("SpecialChar", palette.pink, nil, nil)
set_highlight("Tag", palette.pink, nil, nil)
set_highlight("Delimiter", palette.overlay2, nil, nil)
set_highlight("SpecialComment", palette.overlay0, nil, "bold,italic")
set_highlight("Debug", palette.red, nil, nil)
set_highlight("Underlined", nil, nil, "underline")
set_highlight("Ignore", palette.surface1, nil, nil)
set_highlight("Error", palette.red, nil, "bold,underline")
set_highlight("Todo", palette.mantle, palette.yellow, "bold,italic")

-- UI related highlights
set_highlight("Cursor", palette.base, palette.text, nil)
set_highlight("Visual", nil, palette.surface1, nil)
set_highlight("CursorLine", nil, palette.surface0, nil)
set_highlight("CursorColumn", nil, palette.surface0, nil)
set_highlight("ColorColumn", nil, palette.surface0, nil)
set_highlight("LineNr", palette.surface1, nil, nil)
set_highlight("CursorLineNr", palette.blue, nil, nil)
set_highlight("SignColumn", palette.base, nil, nil)
set_highlight("StatusLine", palette.subtext0, palette.mantle, nil)
set_highlight("StatusLineNC", palette.surface1, palette.crust, nil)
set_highlight("TabLine", palette.surface1, palette.mantle, nil)
set_highlight("TabLineSel", palette.text, palette.surface0, nil)
set_highlight("TabLineFill", palette.mantle, palette.crust, nil)
set_highlight("VertSplit", palette.crust, nil, nil)
set_highlight("Folded", palette.subtext0, palette.surface0, nil)
set_highlight("FoldColumn", palette.surface1, palette.base, nil)
set_highlight("EndOfBuffer", palette.base, nil, nil)
set_highlight("Terminal", palette.text, palette.base, nil)
set_highlight("WinSeparator", palette.surface0, nil, nil)

-- Search
set_highlight("Search", palette.base, palette.yellow, nil)
set_highlight("IncSearch", palette.base, palette.peach, "bold")

-- Diff
set_highlight("DiffAdd", palette.green, nil, "reverse")
set_highlight("DiffChange", palette.blue, nil, "reverse")
set_highlight("DiffDelete", palette.red, nil, "reverse")
set_highlight("DiffText", palette.yellow, nil, "reverse")

-- Spelling
set_highlight("SpellBad", palette.red, nil, "underline")
set_highlight("SpellCap", palette.yellow, nil, "underline")
set_highlight("SpellRare", palette.green, nil, "underline")
set_highlight("SpellLocal", palette.teal, nil, "underline")

-- Pmenu
set_highlight("Pmenu", palette.text, palette.base, nil)
set_highlight("PmenuSel", palette.base, palette.blue, nil)
set_highlight("PmenuSbar", nil, palette.surface1, nil)
set_highlight("PmenuThumb", nil, palette.overlay0, nil)

-- Wild menu
set_highlight("WildMenu", palette.base, palette.blue, nil)

-- Notification
set_highlight("NormalFloat", palette.text, palette.base, nil)
set_highlight("FloatBorder", palette.surface2, palette.base, nil)

-- Treesitter specific highlights
set_highlight("@variable", palette.text, nil, nil)
set_highlight("@variable.builtin", palette.blue, nil, nil)
set_highlight("@variable.parameter", palette.text, nil, nil)
set_highlight("@variable.member", palette.text, nil, nil)
set_highlight("@constant", palette.peach, nil, nil)
set_highlight("@constant.builtin", palette.peach, nil, nil)
set_highlight("@constant.macro", palette.peach, nil, nil)
set_highlight("@string", palette.green, nil, nil)
set_highlight("@string.regex", palette.peach, nil, nil)
set_highlight("@string.escape", palette.pink, nil, nil)
set_highlight("@string.special", palette.pink, nil, nil)
set_highlight("@character", palette.green, nil, nil)
set_highlight("@number", palette.peach, nil, nil)
set_highlight("@boolean", palette.mauve, nil, nil)
set_highlight("@function", palette.blue, nil, nil)
set_highlight("@function.builtin", palette.blue, nil, nil)
set_highlight("@function.call", palette.blue, nil, nil)
set_highlight("@function.macro", palette.mauve, nil, nil)
set_highlight("@parameter", palette.text, nil, nil)
set_highlight("@keyword", palette.mauve, nil, nil)
set_highlight("@keyword.function", palette.mauve, nil, nil)
set_highlight("@keyword.operator", palette.sky, nil, nil)
set_highlight("@keyword.return", palette.mauve, nil, nil)
set_highlight("@keyword.coroutine", palette.mauve, nil, nil)
set_highlight("@keyword.debug", palette.red, nil, nil)
set_highlight("@keyword.exception", palette.mauve, nil, nil)
set_highlight("@keyword.import", palette.mauve, nil, nil)
set_highlight("@keyword.storage", palette.mauve, nil, nil)
set_highlight("@keyword.repeat", palette.mauve, nil, nil)
set_highlight("@keyword.conditional", palette.mauve, nil, nil)
set_highlight("@keyword.directive", palette.mauve, nil, nil)
set_highlight("@keyword.directive.define", palette.mauve, nil, nil)
set_highlight("@label", palette.blue, nil, nil)
set_highlight("@operator", palette.sky, nil, nil)
set_highlight("@type", palette.yellow, nil, nil)
set_highlight("@type.builtin", palette.yellow, nil, nil)
set_highlight("@type.definition", palette.yellow, nil, nil)
set_highlight("@type.qualifier", palette.mauve, nil, nil)
set_highlight("@type.argument", palette.yellow, nil, nil)
set_highlight("@attribute", palette.pink, nil, nil)
set_highlight("@property", palette.text, nil, nil)
set_highlight("@field", palette.text, nil, nil)
set_highlight("@method", palette.blue, nil, nil)
set_highlight("@method.call", palette.blue, nil, nil)
set_highlight("@constructor", palette.sapphire, nil, nil)
set_highlight("@comment", palette.overlay0, nil, "italic")
set_highlight("@punctuation.delimiter", palette.overlay2, nil, nil)
set_highlight("@punctuation.bracket", palette.text, nil, nil)
set_highlight("@punctuation.special", palette.pink, nil, nil)
set_highlight("@markup.strong", nil, nil, "bold")
set_highlight("@markup.italic", nil, nil, "italic")
set_highlight("@markup.strikethrough", nil, nil, "strikethrough")
set_highlight("@markup.underline", nil, nil, "underline")
set_highlight("@markup.heading", palette.mauve, nil, "bold")
set_highlight("@markup.quote", palette.teal, nil, nil)
set_highlight("@markup.list", palette.mauve, nil, nil)
set_highlight("@markup.list.markdown", palette.blue, nil, nil)
set_highlight("@markup.bold", palette.mauve, nil, "bold")
set_highlight("@markup.italic", palette.pink, nil, "italic")
set_highlight("@markup.link", palette.blue, nil, "underline")
set_highlight("@markup.link.label", palette.mauve, nil, nil)
set_highlight("@markup.link.url", palette.blue, nil, "underline")
set_highlight("@markup.raw", palette.green, nil, nil)
set_highlight("@markup.raw.block", palette.text, nil, nil)
set_highlight("@diff.plus", palette.green, nil, nil)
set_highlight("@diff.minus", palette.red, nil, nil)
set_highlight("@diff.delta", palette.blue, nil, nil)

-- LSP Semantic Token Groups
set_highlight("@lsp.type.comment", nil, nil, nil)
set_highlight("@lsp.type.keyword", nil, nil, nil)
set_highlight("@lsp.type.namespace", nil, nil, nil)
set_highlight("@lsp.type.parameter", nil, nil, nil)
set_highlight("@lsp.type.property", nil, nil, nil)
set_highlight("@lsp.type.variable", nil, nil, nil)
set_highlight("@lsp.typemod.function.declaration", palette.blue, nil, nil)
set_highlight("@lsp.typemod.variable.defaultLibrary", palette.yellow, nil, "italic")

-- LSP Diagnostics
set_highlight("DiagnosticError", palette.red, nil, nil)
set_highlight("DiagnosticWarn", palette.peach, nil, nil)
set_highlight("DiagnosticInfo", palette.blue, nil, nil)
set_highlight("DiagnosticHint", palette.teal, nil, nil)
set_highlight("DiagnosticOk", palette.green, nil, nil)
set_highlight("DiagnosticUnderlineError", nil, nil, "underline")
set_highlight("DiagnosticUnderlineWarn", nil, nil, "underline")
set_highlight("DiagnosticUnderlineInfo", nil, nil, "underline")
set_highlight("DiagnosticUnderlineHint", nil, nil, "underline")
set_highlight("DiagnosticUnderlineOk", nil, nil, "underline")

-- Git Signs
set_highlight("GitSignsAdd", palette.green, nil, nil)
set_highlight("GitSignsChange", palette.blue, nil, nil)
set_highlight("GitSignsDelete", palette.red, nil, nil)
