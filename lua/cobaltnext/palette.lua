-- lua/cobaltnext/palette.lua
local M = {}

-- The new VS Code "Cobalt Next" (Non-Dark)
M.default = {
	black = "#000000",
	red = "#ed6f7d",
	green = "#99c794",
	yellow = "#fac863",
	blue = "#5a9bcf",
	magenta = "#c5a5c5",
	cyan = "#5fb3b3",
	white = "#d8dee9",
	bright_black = "#65737e",
	bright_red = "#D6838C",
	bright_green = "#C1DCBE",
	bright_yellow = "#FFDE9B",
	bright_blue = "#8ABEE7",
	bright_magenta = "#EDCDED",
	bright_cyan = "#9BE2E2",
	bright_white = "#ffffff",
	orange = "#eb9a6d",
	variable = "#CDD3DE",
	background = "#1b2b34",
	sidebar_bg = "#0f1c23",
	foreground = "#ffffff",
	alt_foreground = "#d8dee9",
	cursor = "#fac863",
	cursor_txt = "#1b2b34",
	selection = "#4f5b66",
	selection_txt = "#ffffff",
	line_highlight = "#343d46",
	border = "#343d46",
}

-- The Original "Cobalt Next Dark"
M.dark = {
	black = "#282f36",
	red = "#d6838c",
	green = "#c1dcbe",
	yellow = "#ffde9b",
	blue = "#8abee7",
	magenta = "#edcded",
	cyan = "#9be2e2",
	white = "#ffffff",
	bright_black = "#65737e",
	bright_red = "#d6838c",
	bright_green = "#c1dcbe",
	bright_yellow = "#ffde9b",
	bright_blue = "#8abee7",
	bright_magenta = "#edcded",
	bright_cyan = "#9be2e2",
	bright_white = "#ffffff",
	orange = "#ffde9b",
	variable = "#d8dee9",
	background = "#0f1c23",
	sidebar_bg = "#080f13",
	foreground = "#d8dee9",
	alt_foreground = "#d8dee9",
	cursor = "#fac863",
	cursor_txt = "#ffffff",
	selection = "#5fb3b3",
	selection_txt = "#ffffff",
	line_highlight = "#282f36",
	border = "#65737e",
}

-- Function to return the correct palette based on the colorscheme command
function M.get()
	local style = vim.g.cobaltnext_style or "default"
	if style == "dark" then
		return M.dark
	end
	return M.default
end

return M
