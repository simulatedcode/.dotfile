-- Example config in Lua
require("github-theme").setup({
  theme_style = "dimmed",
  function_style = "italic",
  sidebars = { "qf", "vista_kind", "terminal", "packer" },
  hide_inactive_statusline = false,
  transparent = true,

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  colors = { hint = "orange", error = "#ff0000" },

  -- transparent = true,
  overrides = function(_)
    return {
      Visual = { style = 'inverse' },
      Search = { style = 'inverse' },
    }
  end,
  dev = true,
})
