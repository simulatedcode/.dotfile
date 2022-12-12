require("github-theme").setup({
  theme_style = "dimmed",
  function_style = "italic",
  sidebars = { "qf", "vista_kind", "terminal", "packer" },
  hide_inactive_statusline = true,
  dark_float = true,
  dark_sidebar = true,
  comment_style = 'italic',

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  colors = { hint = "orange", error = "#ff0000" },

  --transparent = true,
  overrides = function(_)
    return {
      Visual = { style = 'inverse' },
      Search = { style = 'inverse' },
    }
  end,
  dev = true,
})
