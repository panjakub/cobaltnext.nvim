-- lua/cobaltnext/init.lua
local highlights = require("cobaltnext.highlights")

local M = {}

function M.load()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.background = "dark"
	vim.g.colors_name = "cobaltnext_dark"

	highlights.setup()
end

return M
