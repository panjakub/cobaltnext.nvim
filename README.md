
# 🌌 cobaltnext.nvim

A Neovim colorscheme based on the Ghostty **cobaltnext-dark** palette.

## Installation (LazyVim / lazy.nvim)

```lua
{
  "panjakub/cobaltnext.nvim",
  name = "cobaltnext",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("cobaltnext_dark")
  end,
}
