-- lua/cobaltnext/highlights.lua
local c = require("cobaltnext.palette")

local M = {}

local function hi(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.setup()
	-- Base
	hi("Normal", { fg = c.foreground, bg = c.background })
	hi("NormalFloat", { fg = c.foreground, bg = c.background })
	hi("FloatBorder", { fg = c.darkgray, bg = c.background })
	hi("Cursor", { fg = c.cursor_txt, bg = c.cursor })
	hi("Visual", { fg = c.selection_txt, bg = c.darkgray })
	hi("LineNr", { fg = c.darkgray })
	hi("CursorLineNr", { fg = c.lightyellow, bold = true })
	hi("VertSplit", { fg = c.darkgray })
	hi("StatusLine", { fg = c.foreground, bg = c.black })
	hi("StatusLineNC", { fg = c.darkgray, bg = c.black })
	hi("Pmenu", { fg = c.foreground, bg = c.background })
	hi("PmenuSel", { fg = c.foreground, bg = c.black })
	hi("EndOfBuffer", { fg = c.background })

	-- Syntax
	hi("Comment", { fg = c.darkgray, italic = true })
	hi("String", { fg = c.green })
	hi("Number", { fg = c.lightyellow })
	hi("Function", { fg = c.yellow })
	hi("Keyword", { fg = c.red })
	hi("Identifier", { fg = c.blue })
	hi("Type", { fg = c.teal })
	hi("Constant", { fg = c.pink })
	hi("Operator", { fg = c.foreground })
	hi("Todo", { fg = c.yellow, bg = c.black, bold = true })

	-- Treesitter
	hi("@comment", { fg = c.darkgray, italic = true })
	hi("@string", { fg = c.green })
	hi("@number", { fg = c.lightyellow })
	hi("@function", { fg = c.yellow })
	hi("@function.call", { fg = c.lightyellow })
	hi("@keyword", { fg = c.lightred })
	hi("@conditional", { fg = c.pink })
	hi("@repeat", { fg = c.pink })
	hi("@type", { fg = c.teal })
	hi("@type.builtin", { fg = c.lightblue })
	hi("@constant", { fg = c.pink })
	hi("@variable", { fg = c.foreground })
	hi("@variable.builtin", { fg = c.lightpink })
	hi("@field", { fg = c.blue })
	hi("@property", { fg = c.lightblue })
	hi("@operator", { fg = c.foreground })

	-- LSP
	hi("DiagnosticError", { fg = c.red, italic = true })
	hi("DiagnosticWarn", { fg = c.yellow, italic = true })
	hi("DiagnosticInfo", { fg = c.blue, italic = true })
	hi("DiagnosticHint", { fg = c.teal, italic = true })
	hi("DiagnosticUnderlineError", { undercurl = true, sp = c.red, italic = true })
	hi("DiagnosticUnderlineWarn", { undercurl = true, sp = c.yellow, italic = true })
	hi("DiagnosticUnderlineInfo", { undercurl = true, sp = c.blue, italic = true })
	hi("DiagnosticUnderlineHint", { undercurl = true, sp = c.teal, italic = true })
	hi("LspReferenceText", { bg = c.black })
	hi("LspReferenceRead", { bg = c.black })
	hi("LspReferenceWrite", { bg = c.black })
	hi("LspInlayHint", { fg = c.darkgray, bg = c.black, italic = true })
	hi("LspCodeLens", { fg = c.darkgray, italic = true })

	-- Telescope
	hi("TelescopeNormal", { bg = c.background })
	hi("TelescopeBorder", { fg = c.darkgray, bg = c.background })
	hi("TelescopePromptNormal", { bg = c.black })
	hi("TelescopePromptBorder", { fg = c.darkgray, bg = c.black })
	hi("TelescopeSelection", { fg = c.white, bg = c.teal })

	-- Explorer (Snacks/Neo-tree/NvimTree)
	hi("NvimTreeNormal", { bg = c.background })
	hi("NvimTreeNormalNC", { bg = c.background })
	hi("NvimTreeEndOfBuffer", { fg = c.background })
	hi("NeoTreeNormal", { bg = c.background })
	hi("NeoTreeNormalNC", { bg = c.background })
	hi("NeoTreeEndOfBuffer", { fg = c.background })

	-- WhichKey
	hi("WhichKey", { fg = c.yellow })
	hi("WhichKeyGroup", { fg = c.teal })
	hi("WhichKeyDesc", { fg = c.lightblue })

	-- GitSigns
	hi("GitSignsAdd", { fg = c.green })
	hi("GitSignsChange", { fg = c.yellow })
	hi("GitSignsDelete", { fg = c.red })

	-- Lazy.nvim
	hi("LazyNormal", { bg = c.background, fg = c.foreground })
	hi("LazyH1", { fg = c.yellow, bold = true })
end

return M
