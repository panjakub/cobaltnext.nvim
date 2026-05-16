-- lua/cobaltnext/highlights.lua
local palette = require("cobaltnext.palette")

local M = {}

local function hi(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.setup()
	local c = palette.get()

	-- Base
	hi("Normal", { fg = c.foreground, bg = c.background })
	hi("NormalFloat", { fg = c.alt_foreground, bg = c.sidebar_bg })
	hi("FloatBorder", { fg = c.cyan, bg = c.sidebar_bg })
	hi("Cursor", { fg = c.cursor_txt, bg = c.cursor })
	hi("Visual", { fg = c.selection_txt, bg = c.selection })
	hi("LineNr", { fg = c.selection })
	hi("CursorLineNr", { fg = c.alt_foreground, bold = true })
	hi("CursorLine", { bg = c.line_highlight })
	hi("VertSplit", { fg = c.border })
	hi("Folded", { fg = c.blue, bg = c.line_highlight, italic = true })
	hi("FoldColumn", { fg = c.bright_black, bg = c.background })
	hi("StatusLine", { fg = c.alt_foreground, bg = c.background })
	hi("StatusLineNC", { fg = c.bright_black, bg = c.background })
	hi("Pmenu", { fg = c.foreground, bg = c.sidebar_bg })
	hi("PmenuSel", { fg = c.alt_foreground, bg = c.line_highlight })
	hi("EndOfBuffer", { fg = c.background })

	-- Syntax
	hi("Comment", { fg = c.bright_black, italic = true })
	hi("String", { fg = c.green })
	hi("Number", { fg = c.orange })
	hi("Function", { fg = c.blue })
	hi("Keyword", { fg = c.magenta })
	hi("Identifier", { fg = c.variable })
	hi("Type", { fg = c.yellow })
	hi("Constant", { fg = c.orange })
	hi("Operator", { fg = c.cyan })
	hi("Todo", { fg = c.background, bg = c.yellow, bold = true })

	-- Treesitter
	hi("@comment", { fg = c.bright_black, italic = true })
	hi("@string", { fg = c.green })
	hi("@number", { fg = c.orange })
	hi("@function", { fg = c.blue })
	hi("@function.call", { fg = c.blue })
	hi("@keyword", { fg = c.magenta })
	hi("@conditional", { fg = c.magenta })
	hi("@repeat", { fg = c.magenta })
	hi("@type", { fg = c.yellow })
	hi("@type.builtin", { fg = c.yellow })
	hi("@constant", { fg = c.orange })
	hi("@variable", { fg = c.variable })
	hi("@variable.builtin", { fg = c.magenta, italic = true }) -- Language variables like 'this'
	hi("@field", { fg = c.variable })
	hi("@property", { fg = c.variable })
	hi("@operator", { fg = c.cyan })
	hi("@punctuation", { fg = c.cyan })
	hi("@punctuation.bracket", { fg = c.cyan })
	hi("@punctuation.delimiter", { fg = c.cyan })
	hi("@tag", { fg = c.red })
	hi("@tag.attribute", { fg = c.magenta, italic = true })
	hi("@tag.delimiter", { fg = c.cyan })

	-- LSP
	hi("DiagnosticError", { fg = c.red, italic = true })
	hi("DiagnosticWarn", { fg = c.yellow, italic = true })
	hi("DiagnosticInfo", { fg = c.cyan, italic = true })
	hi("DiagnosticHint", { fg = c.blue, italic = true })
	hi("DiagnosticUnderlineError", { undercurl = true, sp = c.red, italic = true })
	hi("DiagnosticUnderlineWarn", { undercurl = true, sp = c.yellow, italic = true })
	hi("DiagnosticUnderlineInfo", { undercurl = true, sp = c.cyan, italic = true })
	hi("DiagnosticUnderlineHint", { undercurl = true, sp = c.blue, italic = true })
	hi("LspReferenceText", { bg = c.line_highlight })
	hi("LspReferenceRead", { bg = c.line_highlight })
	hi("LspReferenceWrite", { bg = c.line_highlight })
	hi("LspInlayHint", { fg = c.bright_black, bg = c.background, italic = true })
	hi("LspCodeLens", { fg = c.alt_foreground, italic = true })

	-- Telescope
	hi("TelescopeNormal", { bg = c.background })
	hi("TelescopeBorder", { fg = c.border, bg = c.background })
	hi("TelescopePromptNormal", { bg = c.sidebar_bg })
	hi("TelescopePromptBorder", { fg = c.sidebar_bg, bg = c.sidebar_bg })
	hi("TelescopeSelection", { fg = c.alt_foreground, bg = c.line_highlight })

	-- Explorer (Snacks/Neo-tree/NvimTree)
	hi("NvimTreeNormal", { bg = c.sidebar_bg })
	hi("NvimTreeNormalNC", { bg = c.sidebar_bg })
	hi("NvimTreeEndOfBuffer", { fg = c.sidebar_bg })
	hi("NeoTreeNormal", { bg = c.sidebar_bg })
	hi("NeoTreeNormalNC", { bg = c.sidebar_bg })
	hi("NeoTreeEndOfBuffer", { fg = c.sidebar_bg })

	-- WhichKey
	hi("WhichKey", { fg = c.yellow })
	hi("WhichKeyGroup", { fg = c.cyan })
	hi("WhichKeyDesc", { fg = c.blue })

	-- GitSigns
	hi("GitSignsAdd", { fg = c.green })
	hi("GitSignsChange", { fg = c.yellow })
	hi("GitSignsDelete", { fg = c.red })

	-- Lazy.nvim
	hi("LazyNormal", { bg = c.background, fg = c.foreground })
	hi("LazyH1", { fg = c.cyan, bold = true })
end

return M
